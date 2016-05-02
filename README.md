# oracle-ci-test

1. Go to `travis-ci.org` (or .com if you're setting it up for private projects) and sign in with GitHub - there's a login button at the top right corner.

![](assets/Screenshot from 2016-05-02 14-57-53.png)

There you will be prompted to authorize access to your account.

If this is the first time accessing travis ci, you will be presented with a getting started page, that you need to go to your profile in order to activate the repository you want integrated.

You can get to your profile by clicking the `+` sign at the left hand panel next to the header `My Repositories`.

![](assets/Screenshot from 2016-05-02 15-09-07.png)

On your profile, you will see your repositories, and can enable/disable repositories. So, flick on the repository you are hoping to integrate.  

![](assets/Screenshot from 2016-05-02 15-11-34.png)

The next task you will want to do is add the build status to your README, so users are aware of the current status. The format of this icon is `https://github.com/owner/repo.svg`, where owner is the user or organisation that the repo belongs to, and repo is the name of the repository. So, for this repository, the build status icon is: `https://travis-ci.org/tschf/oracle-ci-guide.svg`

![](https://travis-ci.org/tschf/oracle-ci-guide.svg)

Now, the build process requires access to your OTN credentials in order to download the database RPM file - so, that goes without saying that yould be accepting OTN's terms of service - particularly for Oracle XE.

So, after enabling your repository, click the cog icon to the left of the repository name as can be seen above. On the settings page, add the following environment variables:

* ORACLE_LOGIN_ssousername
* ORACLE_LOGIN_password

When you click the `Add` button, you will want to leave `Display value in the build log` set in the `OFF` position (so know what can get your credentials). After that's done, the settings page should appear like so.

![](assets/Screenshot from 2016-05-02 16-26-59.png)
