<?php
//--------------------------------------------------------------------------------------------------------------
//
// PURPOSE
// -------
// Take a client request containing a message, and add that message to a local message storage 
//
// AUTHOR
// -------
// Lumberjacks Incorperated (2018)
//--------------------------------------------------------------------------------------------------------------

//---------------------------------------- 
// INCLUDES
//---------------------------------------- 
include_once dirname(__FILE__).'/_dependencies/core_procedures/todolist_php_api.php';
include_once dirname(__FILE__).'/_dependencies/php_environment_php_api.php';
include_once dirname(__FILE__).'/_dependencies/core_procedures/secured_session_php_api.php';

//---------------------------------------- 
// SCRIPT
//---------------------------------------- 
	if (!ensureThisIsASecuredSession()) {
		echo 'You are not allowed to send messages unless you are logged into a secure session';
		die();
	}

	$todoText = getTodoTextFieldContentsFromCurrentClientRequest();
	$time = timeTextFieldContentsFromCurrentClientRequest();
	$place = placeTextFieldContentsFromCurrentClientRequest();
	$people = peopleTextFieldContentsFromCurrentClientRequest();
	$topic = topicTextFieldContentsFromCurrentClientRequest();
	addTodoListEntryForCurrentUserWithTodoTextTimePlacePeopleAndTopic($todoText, $time, $place, $people, $topic);

	echo 'Successfully sent a message, WOO';

?>

