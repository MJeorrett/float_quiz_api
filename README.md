# Float Cash Flow Quiz API
This is the api that provides the questions to the float_quiz_api. It is written in Rails.

The API is hosted at https://radiant-badlands-70710.herokuapp.com, an access token is required which is available on request.

## Local Installation instructions

To install the app locally:
- Clone this repo
- Move into the created directory
- run `bundle install`
- run `rake db:create`
- run `rake db:migrate`
- run `rake seed-quiz`, this will seed the questions into the database from the csv file located at 'lib/assets/quiz.csv'
- run `rake server`, this will start the server on port 5000 (which is expected by the client)

To install the client see follow the instructions in it's readme which can be found at https://github.com/MJeorrett/float_quiz_client.
