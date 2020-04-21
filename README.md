# homebrew-misc

Miscellaneous Homebrew Formulae that are probably [too niche to be acceptable for Homebrew Core](https://docs.brew.sh/Acceptable-Formulae).

## How do I install these formulae?
`brew install ryanfb/misc/<formula>`

Or `brew tap ryanfb/misc` and then `brew install <formula>`.

Or install via URL (which will not receive updates):

```
brew install https://raw.githubusercontent.com/ryanfb/homebrew-misc/master/Formula/<formula>.rb
```

## Documentation
`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).

## Notes

You may need to run `brew tap cartr/qt4` to resolve the error:

    Error: could not get runtime dependencies from /usr/local/Homebrew/Library/Taps/ryanfb/homebrew-misc/Formula/scantailor.rb!
