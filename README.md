
# FerretCamp

Ferret Camp is a great way to maintain your collection of Ferrets and Ferret Owners. 

## Installation

    If you want to use ferret camp for yourself to keep track of all your furry friends, all you need to do is fork and clone this repository and open it in whatever environment you have. 
    These 2 steps are very important(The app cant run without it)
    *Run bundle install in the command line
    *Next run rake db:migrate to run all of the migrations
    Start up shotgun and go to local host: 9393 in the browser 
    We can now log in and a user will be created
    A user can go into ferret registration and create a ferret
## Usage

```
Here we have users who can register a ferret for camp and have the option to drop them off or pick the up. The user is allowed to create, read, update and delete a ferret, only if they were the user who created it. The index page will show a user all the ferrets that are actually dropped off by all users, and also a list of the current ferrets that the current user registered. Even if a ferret is registered it will only appear on the index page if it is dropped off, otherwise the user who registered that ferret needs to sign in and drop them off.

```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)
MIT License

Copyright (c) [2020] [Anthony Romagnolo]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.