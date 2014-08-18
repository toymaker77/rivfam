<?php

//////////////////////////////////////////////////////////////////////////////////////////////////////
//EDIT: Wings On Air Virtual Aviation TrainingCenter 1.0 module for phpVMS virtual airline system   //
//EDIT: @author Michael Sturm (WOAVA - Wingsonair.net)                                              //
//EDIT: @copyright Copyright (c) 2014, Michael Sturm, All Rights Reserved                           //
//////////////////////////////////////////////////////////////////////////////////////////////////////

class TrainingCenter extends CodonModule 
{
    /**
     * Activity::index()
     * 
     * @return void
     */
    public $title = 'Training Center';
    /**
     * Activity::index()
     * 
     * @return void
     */
    public function index() {
        if (!Auth::LoggedIn()) {
            $this->set('message', '<br /><h3 align="center">You must be logged in to access this feature!</h3><br />');
            $this->render('core_error.tpl');
            return;
        }
        // to view this module, access using YOURDOMAIN.com/index.php/woava_flightboard
        // Don't forget to rename all the files, folders and the "woava_flightboard" part on line 19 of this file.
        // Good luck with your development.
        
        $this->render('trainingcenter/TrainingCenter.tpl');
        
    }
    public function introvid() {
        if (!Auth::LoggedIn()) {
            $this->set('message', '<br /><h3 align="center">You must be logged in to access this feature!</h3><br />');
            $this->render('core_error.tpl');
            return;
        }
        $this->render('trainingcenter/IntroVid.tpl');
    }
    public function sidemenu() {
        if (!Auth::LoggedIn()) {
            $this->set('message', '<br /><h3 align="center">You must be logged in to access this feature!</h3><br />');
            $this->render('core_error.tpl');
            return;
        }
        $this->render('trainingcenter/SideMenu.tpl');
    }
    public function training_body_1() {
        if (!Auth::LoggedIn()) {
            $this->set('message', '<br /><h3 align="center">You must be logged in to access this feature!</h3><br />');
            $this->render('core_error.tpl');
            return;
        }
        $this->render('trainingcenter/TBody_1.tpl');
    }
    public function training_body_2() {
        if (!Auth::LoggedIn()) {
            $this->set('message', '<br /><h3 align="center">You must be logged in to access this feature!</h3><br />');
            $this->render('core_error.tpl');
            return;
        }
        $this->render('trainingcenter/TBody_2.tpl');
    }
    public function welcome() {
        if (!Auth::LoggedIn()) {
            $this->set('message', '<br /><h3 align="center">You must be logged in to access this feature!</h3><br />');
            $this->render('core_error.tpl');
            return;
        }
        $this->render('trainingcenter/Welcome.tpl');
    }
    public function VFR0101() {
        if (!Auth::LoggedIn()) {
            $this->set('message', '<br /><h3 align="center">You must be logged in to access this feature!</h3><br />');
            $this->render('core_error.tpl');
            return;
        }
        $this->render('trainingcenter/Videos/VFRNAV/VFR0101_vid.tpl');
    }
    public function VFR0102() {
        if (!Auth::LoggedIn()) {
            $this->set('message', '<br /><h3 align="center">You must be logged in to access this feature!</h3><br />');
            $this->render('core_error.tpl');
            return;
        }
        $this->render('trainingcenter/Videos/VFRNAV/VFR0102_vid.tpl');
    }
    public function VFR0103() {
        if (!Auth::LoggedIn()) {
            $this->set('message', '<br /><h3 align="center">You must be logged in to access this feature!</h3><br />');
            $this->render('core_error.tpl');
            return;
        }
        $this->render('trainingcenter/Videos/VFRNAV/VFR0103_vid.tpl');
    }
    public function VFR0104() {
        if (!Auth::LoggedIn()) {
            $this->set('message', '<br /><h3 align="center">You must be logged in to access this feature!</h3><br />');
            $this->render('core_error.tpl');
            return;
        }
        $this->render('trainingcenter/Videos/VFRNAV/VFR0104_vid.tpl');
    }
    public function cessnaflight() {
        if (!Auth::LoggedIn()) {
            $this->set('message', '<br /><h3 align="center">You must be logged in to access this feature!</h3><br />');
            $this->render('core_error.tpl');
            return;
        }
        $this->render('trainingcenter/Videos/Flight_Training/Cessna_Flight_vid.tpl');
    }
    public function flightpanel() {
        if (!Auth::LoggedIn()) {
            $this->set('message', '<br /><h3 align="center">You must be logged in to access this feature!</h3><br />');
            $this->render('core_error.tpl');
            return;
        }
        $this->render('trainingcenter/Videos/Understand_Aircraft/flight_panel_vid.tpl');
    }
    public function fs_lesson01() {
        if (!Auth::LoggedIn()) {
            $this->set('message', '<br /><h3 align="center">You must be logged in to access this feature!</h3><br />');
            $this->render('core_error.tpl');
            return;
        }
        $this->render('trainingcenter/Videos/Flight_Simulation/FS_Lesson01_vid.tpl');
    }
    public function fs_lesson02() {
        if (!Auth::LoggedIn()) {
            $this->set('message', '<br /><h3 align="center">You must be logged in to access this feature!</h3><br />');
            $this->render('core_error.tpl');
            return;
        }
        $this->render('trainingcenter/Videos/Flight_Simulation/FS_Lesson02_vid.tpl');
    }
    public function fs_lesson03() {
        if (!Auth::LoggedIn()) {
            $this->set('message', '<br /><h3 align="center">You must be logged in to access this feature!</h3><br />');
            $this->render('core_error.tpl');
            return;
        }
        $this->render('trainingcenter/Videos/Flight_Simulation/FS_Lesson03_vid.tpl');
    }
    public function as_ultimate_aviation() {
        if (!Auth::LoggedIn()) {
            $this->set('message', '<br /><h3 align="center">You must be logged in to access this feature!</h3><br />');
            $this->render('core_error.tpl');
            return;
        }
        $this->render('trainingcenter/Videos/Aviation_Show/Ultimate_Aviation_vid.tpl');
    }
    
}