# Contributing

This guide have some instructions and tips on how to create a new Mangayomi extension on Dart extension.

## Prerequisites

Before starting please have installed the recent desktop version of the mangayomi application preferably or if you want with a tablet too.


### Writing your extension
1. Open the app.
2. Go to extension tab : 
![1](https://raw.githubusercontent.com/iamchiraggiri/mangayomi-extensions/refs/heads/screenshots/1.png)
3. then click `+` and you will see : 
![2](https://raw.githubusercontent.com/iamchiraggiri/mangayomi-extensions/refs/heads/screenshots/2.png)
4. Fill in the fields with your new source that you would like to create,
![3](https://raw.githubusercontent.com/iamchiraggiri/mangayomi-extensions/refs/heads/screenshots/dart-3.png)
NB: only the `ApiUrl` field is optional
then click on save
5. you will see your new source in the extension list
![4](https://raw.githubusercontent.com/iamchiraggiri/mangayomi-extensions/refs/heads/screenshots/dart-4.png)
click to open settings
6. After click on edit code
![5](https://raw.githubusercontent.com/iamchiraggiri/mangayomi-extensions/refs/heads/screenshots/dart-5.png)
7. Finally you can now write the extension
![6](https://raw.githubusercontent.com/iamchiraggiri/mangayomi-extensions/refs/heads/screenshots/dart-6.png)
- This page contains three parts: 
    - Code editor: where you will write your code 
    - Fecth result: where you will test the different implemented methods by having a result in the expected format
    - Console: which will show you the logs

Once extension is ready you can relocate your code into `mangayomi-extension` project in a `src` or `multisrc` package
Create the folder with the name of the source such as [this example](https://github.com/kodjodevf/mangayomi-extensions/blob/main/dart/anime/src/en/kisskh)
after go either to the anime_source_list.dart file for anime or manga_source_list.dart for the manga and import the extension then
create a Pull Request.

### Source 

| Field | Description |
| ----- | ----------- |
| `name` | Name displayed in the "Sources" tab in Mangayomi. |
| `baseUrl` | Base URL of the source without any trailing slashes. |
| `apiUrl` | (Optional, defaults is empty) Api URL of the source with trailing slashes. |
| `lang` | An ISO 639-1 compliant language code (two letters in lower case in most cases, but can also include the country/dialect part by using a simple dash character). |
| `id` | Identifier of your source, automatically set in `Source`. It should only be manually overriden if you need to copy an existing autogenerated ID. |
| `sourceCodeUrl` | contains the URL where the extension source code can be downloaded |
| `sourceCode` | contains the extension source code |
| `isManga` | (Optional, defaults to `true`) specify source type (false for anime and true for manga)|
| `dateFormat` | (Optional, defaults is empty) |
| `iconUrl` | The extension icon URL |
| `version` | The extension version code. This must be incremented with any change to the code. |
| `dateFormatLocale` | (Optional, defaults is empty) |
| `isNsfw` | (Optional, defaults to `false`) Flag to indicate that a source contains NSFW content. |

### Extension call flow

#### Popular manga

a.k.a. the Browse source entry point in the app (invoked by tapping on the source name).

- The app calls `getPopular` which should return a `MPages` containing the first batch of found `MManga` entries.
    - This method supports pagination. When user scrolls the manga  list and more results must be fetched, the app calls it again with increasing `page` values(starting with `page=1`). This continues while `MPages.hasNextPage` is passed as `true` and `MPages.list` is not empty.
- To show the list properly, the app needs `url`, `title` and `imageUrl`. You **must** set them here. The rest of the fields could be filled later.(refer to Manga Details below).

#### Latest manga

a.k.a. the Latest source entry point in the app (invoked by tapping on the "Latest" button beside the source name).

- Similar to popular manga, but should be fetching the latest entries from a source.

#### Search manga

- When the user searches inside the app, `search` will be called and the rest of the flow is similar to what happens with `getPopular`.
    - If search functionality is not available, return `MPages([], false)`
- `getFilterList` will be called to get all filters and filter types.

### Filters

The search flow have support to filters that can be added to a `FilterList` inside the `getFilterList` method. When the user changes the filter's state, they will be passed to the `search` method, and they can be iterated to create the request (by getting the `filter.state` value, where the type varies depending on the `Filter` used). You can check the filter types available [here](https://github.com/kodjodevf/mangayomi/blob/main/lib/eval/model/filter.dart) and in the table below.

| Filter | Description |
| ------ | ----------- |
| `HeaderFilter` | A simple header. Useful for separating sections in the list or showing any note or warning to the user. |
| `SeparatorFilter` | A line separator. Useful for visual distinction between sections. |
| `SelectFilter` | A select control, similar to HTML's `<select>`. Only one item can be selected, and the state is the index of the selected one. |
| `TextFilter` | A text control, similar to HTML's `<input type="text">`. |
| `CheckBoxFilter` | A checkbox control, similar to HTML's `<input type="checkbox">`. The state is `true` if it's checked. |
| `TriStateFilter` | A enhanced checkbox control that supports an excluding state |
| `GroupFilter` | A group of filters (preferentially of the same type). The state will be a `List` with all the states. |
| `SortFilter` | A control for sorting, with support for the ordering. The state indicates which item index is selected and if the sorting is `ascending`. |

All control filters can have a default state set. It's usually recommended if the source have filters to make the initial state match the popular manga list, so when the user open the filter sheet, the state is equal and represents the current manga showing.

#### Manga Details

- When user taps on an manga, `getDetail` will be called and the results will be cached.
    - A `MManga` entry is identified by its `url`.
- `getDetail` is called to update an manga's details from when it was initialized earlier.
    - `MManga.title` is a string containing title.
    - `MManga.description` is a string containing description.
    - `MManga.author` is a string containing author.
    - `MManga.genre` contain list of all genres.
    - `MManga.status` is an "enum" value.
        - To get the status in enum value from a status string, you can use a `parseStatus` function like in the example below.
        `Status` parseStatus(`String status`, `List<dynamic> statusList`)
        ```bash
        final statusList = [
              { "ongoing": 0,
                "complete": 1,
                "hiatus": 2,
                "canceled": 3,
                "publishingFinished": 4,
              }
            ];
        final status = parseStatus('ongoing', statusList);
        print(status); // Status.ongoing
        ```
      Refer to [the values in the `MManga` model](https://github.com/kodjodevf/mangayomi/blob/main/lib/models/manga.dart).
    - During a backup, only `url` and `title` are stored. To restore the rest of the manga data, the app calls `getDetail`, so all fields should be (re)filled in if possible.
    - If a `MManga` is cached `getDetail` will be only called when the user does a manual update(Swipe-to-Refresh).
    - `MManga.chapters` contain list of all manga chapters.
    - `MChapter.name` is a string containing a chapter name.
    - `MChapter.url` is a string containing a chapter url.
    - `MChapter.scanlator` is a string containing a chapter scanlator.
    - `MChapter.dateUpload` is a string containing date **expressed in millisecondsSinceEpoch**.
        - To get the time in millisecondsSinceEpoch from a date string, you can use a `parseDates` function like in the example below.
        `List<dynamic>` parseDates(`List<dynamic> values`, `String dateFormat`, `String dateFormatLocale`,)
          ```bash
          final dates = parseDates(["2023-12-10T11:49:02+000"], "yyyy-MM-dd'T'HH:mm:ss+SSS", "en_US");
          ```
        - If you don't pass `MChapter.dateUpload` and leave it null, the app will use the default date instead, but it's recommended to always fill it if it's available.


#### Chapter pages

- When user opens an chapter, `getPageList` will be called and it will return a `List<String>` or `List<Map<String,dynamic>>` with a list of `{"url":string,"headers":Map<String,String>}` that are used by the reader.

#### Episode Videos

- When user opens an episode, `getVideoList` will be called and it will return a `List<MVideo>` that are used by the player.

## Example sources that can help you understand how to create your source

- [Example](https://github.com/kodjodevf/mangayomi-extensions/blob/main/dart/anime/src/en/kisskh/kisskh.dart)
  of Json API usage.
- [Example](https://github.com/kodjodevf/mangayomi-extensions/blob/main/dart/manga/src/en/mangahere/mangahere.dart)
  of HTML parsing using xpath selector.
- [Example](https://github.com/kodjodevf/mangayomi-extensions/blob/main/dart/manga/multisrc/madara/madara.dart)
  of HTML parsing using HTML DOM selector.

  
## Some functions already available and usable


### http client  

Return Response
```bash
- Simple request

final Client client = Client();

final res = await client.get(Uri.parse("http://example.com"));

print(res.body);

- With headers 

final Client client = Client();

final res = await client.get(Uri.parse("http://example.com"),headers:{"Referer": "http://example.com"});

print(res.body);

- With body

final Client client = Client();

final res = await client.post(Uri.parse("http://example.com"),headers:{"Referer": "http://example.com"},'body':{'name':'test'});

print(res.body);

```

### xpath selector
Return result as `List<String>`

Example: 
```bash
final String htmlString = '''
<html lang="en">
<body>
<div><a href='https://github.com/kodjodevf'>author</a></div>
<div class="head">div head</div>
<div class="container">
    <table>
        <tbody>
          <tr>
              <td id="td1" class="first1">1</td>
              <td id="td2" class="first1">2</td>
              <td id="td3" class="first2">3</td>
              <td id="td4" class="first2 form">4</td>
              <td id="td5" class="second1">one</td>
              <td id="td6" class="second1">two</td>
              <td id="td7" class="second2">three</td>
              <td id="td8" class="second2">four</td>
          </tr>
        </tbody>
    </table>
</div>
<div class="end">end</div>
</body>
</html>
''';


  List<String> xpathRes = xpath(htmlString,'//div/a/@href');
  print(xpathRes); // [https://github.com/kodjodevf]
  print(xpathRes.first); // https://github.com/kodjodevf

```
### HTML DOM selector

Example: 
```bash
final String htmlString = '''
<html lang="en">
<body>
<div><a href='https://github.com/kodjodevf'>author</a></div>
<div class="head">div head</div>
<div class="container">
    <table>
        <tbody>
          <tr>
              <td id="td1" class="first1">1</td>
              <td id="td2" class="first1">2</td>
              <td id="td3" class="first2">3</td>
              <td id="td4" class="first2 form">4</td>
              <td id="td5" class="second1">one</td>
              <td id="td6" class="second1">two</td>
              <td id="td7" class="second2">three</td>
              <td id="td8" class="second2">four</td>
          </tr>
        </tbody>
    </table>
</div>
<div class="end">end</div>
</body>
</html>
''';


  MDocument document = parseHtml(htmlString);
  print(document.selectFirst("a").attr("href")); // https://github.com/kodjodevf
  print(document.selectFirst("td").text); // 1

```
See [`MDocument` model](https://github.com/kodjodevf/mangayomi/blob/main/lib/eval/model/document.dart) and  [`MElement` model](https://github.com/kodjodevf/mangayomi/blob/main/lib/eval/model/element.dart) to see available methods.


### String utils
- `String` substringAfter(`String text`, `String pattern`)
- `String` substringAfterLast(`String text`, `String pattern`)
- `String` substringBefore(`String text`, `String pattern`)
- `String` substringBeforeLast(`String text`, `String pattern`)
- `String` getUrlWithoutDomain(`String url`)

### Crypto utils
- `String` unpackJs(`String code`);
- `Future<String>` evalJs(`String code`);
- `String` deobfuscateJsPassword(`String inputString`)
- `String` encryptAESCryptoJS(`String plainText`, `String passphrase`)
- `String` decryptAESCryptoJS(`String encrypted`, `String passphrase`)
- `String` cryptoHandler(`String text`, `String iv`, `String secretKeyString`, `bool encrypt`)

## Help

If you need a help or have some questions, ask a community in our [Discord server](https://discord.com/invite/EjfBuYahsP).
