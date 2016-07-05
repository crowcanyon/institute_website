
!['research institute website'](http://crowcanyon.github.io/assets/common-files/img/content/Institute_logo.svg)

#### Welcome!

This is git repository for the [Research Institute at Crow Canyon's website](http://institute-test.crowcanyon.org/). The [Crow Canyon Archaeological Center](http://www.crowcanyon.org/) is a 501(c)3 nonprofit organization whose mission is to advance and share knowledge of the human experience through archaeological research, education programs, and partnerships with American Indians. The Research Institute serves to integrate scholarly activities across Crow Canyon and to coordinate collaborations with external researchers, including Native American scholars.

The Research Institute website is built on a very simple software stack, including [Jekyll](https://jekyllrb.com/) for creating a static, blog-aware site, [Bootstrap](http://getbootstrap.com/) for a mobile-ready user interface, [Liquid](https://shopify.github.io/liquid/) for nearly effortless templating, and [jQuery](https://jquery.com/) for client-side scripting. It is meant to be built locally, then pushed to the "/institute" subdirectory at www.crowcanyon.org.

__License__

For more information see the [LICENSE](http://crowcanyon.github.io/LICENSE) file. © Crow Canyon Archaeological Center 2016.

-------
#### Cloning, Building, and Deploying to GitHub Pages

To begin understanding how Jekyll and GitHub Pages work together, check out [Jonathan McGlone's fantastic how-to guide](http://jmcglone.com/guides/github-pages/) on setting up a site on Github Pages. For a basic overview of what git and version-control repositories are, have a look at the [GitHub Guides](https://guides.github.com/).

##### Installing command-line tools
To manage this (and any other GitHub Pages site), you must install several command-line tools, including [git](https://git-scm.com/), [Ruby](https://www.ruby-lang.org/en/), and the Jekyll and github-pages Ruby gems. To install the Ruby gems, run the following:

```
$ gem install github-pages

```

This website also uses the jekyll-paginate gem. Install with:

```
$ gem install jekyll-paginate

```

##### Cloning the repository
Once you have git, Ruby, and Jekyll installed, you can clone or fork this repository to your local machine to start developing. Do so by using the  `git clone` command:

```
$ git clone https://github.com/crowcanyon/crowcanyon.github.io

```

##### Building the site locally
To build the site, navigate to the cloned directory (which should be called `crowcanyon.github.io`), and run:

```
$ jekyll build

```

##### Deploying the site locally
You can test the site locally by running:
```
$ jekyll serve

```
Preview the site at `http://localhost:4000` on a Linux or Windows machine, or `http://127.0.0.1:4000/` on OS X. This is a live preview, so changes you make to files in the `crowcanyon.github.io` will be reflected in the locally served site.

##### Making changes
This website is designed to maximaze abstraction using Liquid templating; most of the repeated elements that appear in the compiled web pages are constructed from Liquid templates and YAML serialized data. For example, the [Projects](http://crowcanyon.github.io/Projects/) and [People](http://crowcanyon.github.io/Projects/) pages are built this way. The YAML data exist in the `_data` directory, and the templates in the respective `index.html` files for each page.

There are four datasets in particular:
- `_data/projects.yaml` contains the information and links to each of Crow Canyon's research projects
- `_data/staff.yaml` contains information about the Crow Canyon research staff
- `_data/volunteers.yaml` contains information about the Crow Canyon research volunteers
- `_data/associates.yaml` contains information about the Crow Canyon Research Associates

When you make edits to any of these files, and push your changes to GitHub, the static People and Projects pages are automatically rebuilt.

##### Pushing changes to the site
We've included two helpful scripts for building and pushing your changes to the Crow Canyon website (if you have the appropriate credentials!). Once you are ready to push new changes to the site, you first `rebuild` the site, then `deploy` those changes to the Crow Canyon website. After `cd`ing to the site directory, do so like this:

```
# rebuild the site
$ bash rebuild.sh

# deploy the changes to the Crow Canyon website
$ bash deploy.sh [USER] [PASSWORD]

```

Use the username and password provided to you by the IT administrator at Crow Canyon.

Your changes will be reflected on the live website!

##### Pushing to GitHub
Finally, don't forget to push to GitHub!

```
# Add all of the changed files to the commit
$ git add .

# Commit the changes to the local repository with the specified message
$ git commit -m "SOME COMMIT MESSAGE HERE DESCRIBING YOUR CHANGES"

# Pust the changes to the remote repository
$ git push

```

##### Permissions
To request push permissions for this repository, please contact the Research Institute at Crow Canyon: [institute@crowcanyon.org](mailto:institute@crowcanyon.org).

