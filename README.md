# intro_to_the_web_revis

Clone this repo and run `bundle` to install gems
Run `ruby app.rb` from the terminal for a static web page or
Run `shotgun app.rb -p 4567` from the terminal for a dinamic webpage
Visit 'http://localhost:4567/ to view the project'
`ctrl-c` to shutdown the app


If you need to kill the server type
`lsof -wni tcp:4567`
Identify the correct server & PID (for example '33456') then type
`kill -9 33456` (<- Your PID here)


Though I'd write down the commands to complete 'Testing with an Automated Browser and Capybara'

in terminal:
1. `brew cask install firefox` (if you don't have firefox installed)
2. Add capybara and selenium to your gemfile
`gem 'capybara', '~> 2.7', '>= 2.7.1'
gem 'selenium-webdriver', '~> 3.52'`
(or most recent versions)
3. `bundle` (to install gems)
4. brew install geckodriver (if you don't have geckodriver installed)
5. `pry` ( or `gem install pry` if you don't have it)
in pry:
[1] pry(main)> `require 'capybara/dsl'` => true
[2] pry(main)> `require 'selenium-webdriver'` => true
[3] pry(main)> `include Capybara::DSL` => Object
[4] pry(main)> `Capybara.default_driver = :selenium` => :selenium
(With Firefox closed)
[5] pry(main)> `visit 'http://capybaraworkout.herokuapp.com'` => ""
(With your terminal and the webpage side-by-side complete the workout)
Workout:
1. click_link 'Start Workout!'
2. click_button('Click me!')
3. click_button('Click on me too!')
4. check('first')
5. check('second')
6. within('section .fourth') do
    click_button "We're the same...but in different sections"
   end
7. click_on(id: 'left')
8. find('button.left').click
9. fill_in 'name', with: 'Bob'
10. fill_in 'age', with: '30'
11. fill_in 'name', with: 'Bob'
12. fill_in 'gender', with: 'Prefer not to say'
13. fill_in 'hometown', with: 'The Moon'
14. fill_in 'favourite beverage', with: 'Moon Juice'
15. click_button 'Submit'
