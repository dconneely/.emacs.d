# Emacs Configuration

Personal Emacs init files to make it easier to keep them in synchronization
across multiple sites.

### Approach

* Use _Easy Customization_ unless it will lead to significant repetition or
  complication.
* Use a separate `custom.el` file for the _Easy Customization_ settings only,
  and keep other settings in other files.
* Use the `use-package` package so that packages can be added and configured
  with minimal fuss.
* However, use packages sparingly and don't commit them.
* Avoid the various 'starter kits' out there - instead understand and
  incorporate features from them.
* Provide attribution of sources (where possible) for the expressions or
  functions in configuration files (other than `custom.el` of course).

