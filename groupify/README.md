# Groupify

You will be creating a full-stack application to help the instruction team at Hack Reactor form Greenfield and Thesis groups. In order to do this you will be using some pre-existing student preference data that you will store in a MySQL database. Your front end will display views created from data in the database. You will have the choice of using either [AngularJS](https://angularjs.org/) or [ReactJS](https://facebook.github.io/react/), and will serve your application with a [NodeJS](https://nodejs.org/) web server, using [ExpressJS](https://expressjs.com/).

NAME WHICH FRONT END FRAMEWORK YOU WILL BE USING FOR THE ASSESSMENT HERE:
* *[AngularJS or ReactJS]*:

By design, this assessment contains more work than you will be able to complete in a day, so don't be concerned about not completing all of the steps below. Rather, please work on the following steps **in order**, moving on to the next step only after the one you are working on is complete. **Commit frequently** with informative messages. While there are instructions to commit at the end of each step, these should not be your only commits. 

<hr />

### Step One: Random Group Formation

**Implement the following user story:**
 > As an instructor, when I click the "Get Groups" button on the groups page, I expect to get a random arrangement of student groups.

![part one][one]

**Implement this user story by doing the following:**
* Serve your application from the provided ExpressJS web server.
  * If using Angular, start your application with the command `npm start`.
  * If using React, start your application with two commands `npm run react-dev` and `npm start` in two separate terminal tabs. For more information about Webpack, read the comments in `webpack.config.js` or take a look at [the Webpack Docs](https://webpack.github.io/docs/).
* Refactor the groups component (in either the `angular-client` or `react-client` directory) to dynamically render groups using the dummy data in `dummy_data.js`. You may create additional components. 
* Create the database and tables using the provided `schema.sql`, following the directions provided in the comments to populate your database.
* Complete the `getAllStudents` function in `database/index.js`.
* Complete the `makeRandom` function in `server/helpers/groups.js`, which should return a random group arrangement, formatted like the following sample data:
    ```javascript
      [
        {
          id: 0,
          name: 'fiery-flowers',
          members: ['Mario', 'Waluigi', 'Yoshi', 'Daisy']
        },
        {
          id: 1,
          name: 'regal-fungus',
          members: ['Peach', 'Wario', 'Koopa Troopa', 'Rosalina']
        },
        {
          id: 2,
          name: 'cylindrical-transit',
          members: ['Bowser', 'Toad', 'King Boo', 'Luigi']
        }

      ]
    ```
    *NOTE* - Use the `createName` and `shuffle` functions in your implementation. 
* In the Express server `server/index.js`, add a route that will respond to GET requests to `/api/groups` with a random group arrangement. You should use the `getAllStudents` function and the `makeRandom` function in your implementation.
* Replace the dummy data in your client with data obtained from the server.

**WHEN THIS STEP IS COMPLETE:** please make a commit with the message "complete step one."

<hr />

### Step Two: Displaying a Student's Preferences

**Implement the following user story:**
  > As an instructor, when I select a student from the drop-down menu on the Preferences page, I expect to see a list of that student's preferences (YES, NO, NEUTRAL).

![part two][two]

Implement this user story by doing the following:
  * Refactor the `Preferences List` component to dynamically render preference data for the student that it receives from its parent component. You may choose to add additional components.
  * Refactor the `Preferences` component to pass the correct preference data for the student selected via the drop down into the `Preferences List` component.
  * Write a function in `database-mysql/index.js` that will query the database and return preference data for one student.
  * Write a route handler in `server/index.js` that will respond to GET requests to `/api/students/:id/preferences` (*NOTE* - the `:id` in this route is called a *route parameter*) by retrieving one student's preference data from the database and sending that data as a JSON object back to the client, formatted like the following sample data: 
    ```javascript
    {
      id: 0,
      name: 'Mario',
      preferences: [
        {
          id: 1,
          name: 'Luigi',
          toP reference: 'YES'
        },
        {
          id: 2,
          name: 'Peach',
          toPreference: 'YES'
        },
        {
          id: 3,
          name: 'Daisy',
          toPreference: 'NEUTRAL'
        },
        {
          id: 4,
          name: 'Bowser',
          toPreference: 'NO'
        },
        {
          id: 5,
          name: 'Wario',
          toPreference: 'NO'
        },
        {
          id: 6,
          name: 'Waluigi',
          toPreference: 'NEUTRAL'
        },
        {
          id: 7,
          name: 'Toad',
          toPreference: 'YES'
        },
        {
          id: 8,
          name: 'Yoshi',
          toPreference: 'YES'
        },
        {
          id: 9,
          name: 'Koopa Troopa',
          toPreference: 'NO'
        },
        {
          id: 10,
          name: 'King Boo',
          toPreference: 'NO'
        },
        {
          id: 11,
          name: 'Rosalina',
          toPreference: 'YES'
        }
      ]
    }
    ```
    *NOTE* - the database only stores YES and NO preferences. When a student does not express an explicit YES or NO preference, the preference is deemed NEUTRAL.
  * Replace the dummy data in your client with data obtained from the server.

**WHEN COMPLETE** please make a commit with the message "complete step two."

<hr />

### Step Three: Displaying Preferences Toward a Student

**Implement the following user story:**
  > As an instructor, when I select a student from the drop-down menu on the Preferences page, I expect to see a list of that student's preferences and a list the preferences expressed toward that student by their classmates.

![part three][three]

Implement this user story by doing the following:
  * Update any components as necessary.
  * Create any new server-side routes as necessary.
  * Update or create any new query methods or database functions as necessary.  

**WHEN THIS STEP IS COMPLETE:** please make a commit with the message "complete step three."

<hr />

### Step Four: Allowing Instructors to Veto a Pairing

**Implement the following user story:**
  > As an instructor, I want to "veto" certain students from being able to work with each other.

![part four][four]

Implement this user story by doing the following:
  * Use the existing data in your database and create any new query methods as necessary.
  * Update any components as necessary.
  * Create any new server-side routes as necessary.  

**WHEN THIS STEP IS COMPLETE:** please make a commit with the message "complete step four."

<hr />

### Step Five: Displaying a Group's Compatibility Score

**Implement the following user story:**
  > As an instructor, when I create a random group arrangement, I want to see a Compatibility Score for each group, which is determined from each group member's preferences toward the other members of the group.

Use this table to calculate scores for each preference among each student in a group:

| Preference TO | Preference FROM | Score |
|:-------------:|:---------------:|:-----:|
| YES           | YES             | +3    |
| YES           | NEUTRAL         | +1    |
| NEUTRAL       | NEUTRAL         | 0     |
| NO            | NEUTRAL         | -2    |
| NO            | NO              | -3    |
| VETO          | VETO            | -5    |

Implement this user story by doing the following:
  * Update any new components as necessary.
  * Create any new helper functions or server-side routes as necessary.

**WHEN THIS STEP IS COMPLETE:** please make a commit with the message "complete step five."

<hr />

### Step Six: Creating Group Arrangements that Only Have Positive Compatibility Scores

**Implement the following user story:**
> As an instructor, I wish to only consider random group arrangements in which every group has a positive Compatibility Score.

Implement this user story by doing the following:
  * Update any components or directives as necessary.
  * Update any server-side helpers or routes as necessary.

**WHEN THIS STEP IS COMPLETE:** please make a commit with the message "complete step six."

<hr />

### Step Seven: Saving Group Arrangements
**Implement the following user story:**
> As an instructor, I want to save a group arrangement to view later.

Implement this user story by doing the following:
  * Create any new components as necessary.
  * Create any new server-side routes as necessary.
  * Modify your database schema and create any new database helper functions as necessary.

**WHEN THIS STEP IS COMPLETE:** please make a commit with the message "complete step seven."

<hr />

## Available Resources

* [Postman](https://www.getpostman.com/)
* [AngularJS Docs](https://angularjs.org/)
* [ReactJS Docs](https://facebook.github.io/react/)
* [Webpack Docs](https://webpack.github.io/docs/)
* [Babel Docs](https://babeljs.io/docs/setup/)
* [jQuery Docs](https://jquery.com/)
* [Underscore Docs](http://underscorejs.org/)
* [BluebirdJS Docs](http://bluebirdjs.com/)
* [NodeJS Docs](https://nodejs.org/)
* [ExpressJS Docs](https://expressjs.com/)
* [Body Parser Middleware Docs](https://github.com/expressjs/body-parser)
* [MySQL Doc](https://dev.mysql.com/doc/refman/5.7/en/)
* [MySQL npm package Docs](https://www.npmjs.com/package/mysql)
* [MySQL Cheat Sheet](http://www.cheat-sheets.org/sites/sql.su/)
* Docs for any npm packages you might use
* [MDN](https://developer.mozilla.org/)
* [Stack Overflow](http://stackoverflow.com/)
* [Sandwich Time](http://sandwich-time.herokuapp.com/) to check if it is a good time to eat your sandwich
* [Google Search](https://google.com) to search for the correct page on any of the documentation above

[one]: mockups/step_one.gif
[two]: mockups/step_two.gif
[three]: mockups/step_three.gif
[four]: mockups/step_four.gif
