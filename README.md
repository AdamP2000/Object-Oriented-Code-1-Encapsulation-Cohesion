Practicing concept of high cohesion and low coupling:


Low coupling: Modules and classes are independent from each other as most as possible

High cohesion: All methods in the class support a central purpose. All methods that do not do this should be removed.

Challenge:

Test-drive the secret diary example:

SecretDiary
  - lock
  - unlock
  - add_entry
  - get_entries

Initially the `SecretDiary` class is locked, meaning `add_entry` and `get_entries` should throw an error.

When the user calls `unlock`, `add_entry` and `get_entries` should work as desired.

When the user locks the diary, by calling `lock`, `add_entry` and `get_entries` should, again, throw an error.
First organise it into one class only.

Then, when all your tests are green, reorganise it into classes with high cohesion.
