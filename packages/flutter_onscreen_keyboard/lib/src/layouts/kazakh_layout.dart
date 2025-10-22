import 'package:flutter/material.dart';
import 'package:flutter_onscreen_keyboard/flutter_onscreen_keyboard.dart';
import 'package:flutter_onscreen_keyboard/src/constants/action_key_type.dart';

/// Standard Kazakh (Cyrillic) desktop keyboard layout.
///
/// The layout follows the Windows/macOS "Kazakh" keyboard arrangement with all
/// additional Kazakh characters (`ә`, `ғ`, `қ`, `ң`, `ө`, `ұ`, `ү`, `һ`, `і`).
/// This keeps modifier keys and punctuation in familiar locations while
/// exposing the extended alphabet as dedicated keys. A globe key mapped to
/// [ActionKeyType.language] sits next to the space bar for quick language
/// toggling.
class KazakhKeyboardLayout extends KeyboardLayout {
  /// Creates a [KazakhKeyboardLayout] instance.
  const KazakhKeyboardLayout();

  @override
  double get aspectRatio => 5 / 2;

  @override
  Map<String, KeyboardMode> get modes => {
        'default': KeyboardMode(rows: _defaultMode),
      };

  List<KeyboardRow> get _defaultMode => [
        const KeyboardRow(
          keys: [
            OnscreenKeyboardKey.text(primary: 'ё', secondary: 'Ё'),
            OnscreenKeyboardKey.text(primary: '1', secondary: '!'),
            OnscreenKeyboardKey.text(primary: '2', secondary: '"'),
            OnscreenKeyboardKey.text(primary: '3', secondary: '№'),
            OnscreenKeyboardKey.text(primary: '4', secondary: ';'),
            OnscreenKeyboardKey.text(primary: '5', secondary: '%'),
            OnscreenKeyboardKey.text(primary: '6', secondary: ':'),
            OnscreenKeyboardKey.text(primary: '7', secondary: '?'),
            OnscreenKeyboardKey.text(primary: '8', secondary: '*'),
            OnscreenKeyboardKey.text(primary: '9', secondary: '('),
            OnscreenKeyboardKey.text(primary: '0', secondary: ')'),
            OnscreenKeyboardKey.text(primary: '-', secondary: '_'),
            OnscreenKeyboardKey.text(primary: '=', secondary: '+'),
            OnscreenKeyboardKey.action(
              name: ActionKeyType.backspace,
              child: Icon(Icons.backspace_outlined),
              flex: 25,
            ),
          ],
        ),
        KeyboardRow(
          keys: [
            const OnscreenKeyboardKey.action(
              name: ActionKeyType.tab,
              child: Icon(Icons.keyboard_tab_rounded),
              flex: 25,
            ),
            ...[
              'й',
              'ц',
              'у',
              'к',
              'е',
              'н',
              'г',
              'ш',
              'ү',
              'ұ',
              'қ',
              'ө',
              'һ',
            ].map((key) => OnscreenKeyboardKey.text(primary: key)),
          ],
        ),
        KeyboardRow(
          keys: [
            const OnscreenKeyboardKey.action(
              name: ActionKeyType.capslock,
              child: Icon(Icons.keyboard_capslock_rounded),
              flex: 30,
              canHold: true,
            ),
            ...[
              'ф',
              'ы',
              'в',
              'а',
              'п',
              'р',
              'о',
              'л',
              'д',
              'ж',
              'э',
              'ә',
            ].map((key) => OnscreenKeyboardKey.text(primary: key)),
            const OnscreenKeyboardKey.action(
              name: ActionKeyType.enter,
              child: Icon(Icons.keyboard_return_rounded),
              flex: 30,
            ),
          ],
        ),
        KeyboardRow(
          keys: [
            const OnscreenKeyboardKey.action(
              name: ActionKeyType.shift,
              child: Icon(Icons.arrow_upward_rounded),
              flex: 35,
            ),
            ...[
              'я',
              'ч',
              'с',
              'м',
              'і',
              'т',
              'ь',
              'б',
              'ю',
              'ң',
              'ғ',
            ].map((key) => OnscreenKeyboardKey.text(primary: key)),
            const OnscreenKeyboardKey.text(primary: '.', secondary: ','),
            const OnscreenKeyboardKey.action(
              name: ActionKeyType.shift,
              child: Icon(Icons.arrow_upward_rounded),
              flex: 35,
            ),
          ],
        ),
        const KeyboardRow(
          keys: [
            OnscreenKeyboardKey.action(
              name: ActionKeyType.language,
              child: Icon(Icons.language_rounded),
            ),
            OnscreenKeyboardKey.text(
              primary: ' ',
              child: Icon(Icons.space_bar_rounded),
              flex: 120,
            ),
          ],
        ),
      ];
}
