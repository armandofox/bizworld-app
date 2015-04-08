Feature: Fetch response from google forms
	As a teacher
	I want to be able to view my student's survey responses
	So that I can properly structure my curriculum

Background: Teacher exists and has multiple classes

  Given the following teacher is signed up:
  | name         | school_name  | city         | state | email				        | username	| password |
  | Armando Fox  | UC Berkeley  | Berkeley     | CA    | armando@berkeley.edu | Armando 	| password |

  And the following classrooms belong to the teacher:
  | name       | program     | class_type   | start_date | end_date	 |
  | Monday 8AM | Bizworld    | After School | 1-1-2015   | 1-10-2015 |

Scenario: View a student's response
	Given Armando Fox submits a form
  When I am on the teacher dashboard page for "Armando Fox"
  And I click "Monday 8AM"
  And I click "Armando Fox"

  Then I should see Armando Fox's survey results