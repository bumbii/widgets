`SingleWordClickableText` is a Flutter widget that allows each word in a given text string to be individually clickable, triggering a callback when the word is pressed. This is useful for applications that require user interaction with specific words within a sentence or paragraph.

## Features

- Clickable individual words in a text string.
- Customizable text style and alignment.
- Trigger callback on word press, passing the clicked word as a parameter.

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

Here is an example of how to use SingleWordClickableText in your Flutter application:

<img src="https://github.com/user-attachments/assets/ad74b790-454d-43df-baa0-4574e4e561e9" alt="guide" width="500"/>


## Properties of SingleWordClickableText
- text: The string of text to display and process word click events on.
- textAlign: The alignment of the text (default is TextAlign.start).
- textStyle: Custom text style (e.g., font size, color).
- onWordPressed: Callback function that gets called when a word is pressed, receiving the clicked word as a parameter.

## Customization
You can customize the appearance of the SingleWordClickableText widget using the following properties:

- textAlign: Set how the text is aligned within the widget (TextAlign.left, TextAlign.right, TextAlign.center, etc.).
- textStyle: Customize the font, color, size, and style of the text.
- onWordPressed: Handle what happens when a word is clicked (e.g., navigate, show a dialog, etc.).
