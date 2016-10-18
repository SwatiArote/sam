package cnfd.dummyproject.controller;


import cnfd.dummyproject.Component.JdbcCreator;
import cnfd.dummyproject.PreviousRecord;
import cnfd.dummyproject.RecordOfDay;
import cnfd.dummyproject.Service.DataEditorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

/**
 * Created by swati on 9/10/16.
 */


@Controller

public class SAMController {

	@Autowired
    JdbcCreator jdbcCreator;
	@Autowired
    DataEditorService dataeditor;

	@RequestMapping(value = "/home",method= RequestMethod.GET)
	public ModelAndView showHomepage(){
		ModelAndView mod = new ModelAndView("Home");
		return mod;
	}


	@RequestMapping(value = "/attendanceofday",method= RequestMethod.GET)
	public ModelAndView takeAttaince(){

		ModelAndView mod = new ModelAndView("AttendancePage");
		return mod;
	}

	@RequestMapping(value = "/recordsaved",method = RequestMethod.POST)

	public ModelAndView saveRecord(@ModelAttribute("todaysrecord") RecordOfDay todaysrecord, BindingResult result) throws Exception{

		String today =todaysrecord.getToday();
		dataeditor.insertTodaysDate(today);

		for(int i=0; i<todaysrecord.getAttendance().length; i++){
			dataeditor.updateAttedanceOfName(today,todaysrecord.getAttendance()[i],0);
		}


		ModelAndView mod = new ModelAndView("RecordSaved");
		return mod;
	}


	@RequestMapping(value ="/previousrecord.html")

	public ModelAndView showPreviousRecord(){
		PreviousRecord prevRecord = dataeditor.givePriousRecord();
		ModelAndView mod = new ModelAndView("PreviousAttendance");
		mod.addObject("prevRecord",prevRecord);
		return mod;
	}

	@RequestMapping(value ="/clearRecord")

	public ModelAndView clearPreviousRecord(){
		ModelAndView mod = new ModelAndView("ClearRecord");
		return mod;
	}

	@RequestMapping(value ="/loginForReset" ,method= RequestMethod.POST)
	public ModelAndView validationOfUser(@RequestParam Map<String,String > map){

		String name = map.get("name");
		String password = map.get("password");

		if(dataeditor.isValidUser(name,password)){
			ModelAndView mod = new ModelAndView("ClearedRecord");
			return mod;
		}
		else {
			ModelAndView mod = new ModelAndView("ClearRecord");
			String msg="Invalid password. Please login again";
			mod.addObject("msg",msg);
			return mod;
		}
	}

	@RequestMapping(value ="/clearedSuccessful")

	public ModelAndView showSucessfulClear(){
		dataeditor.clearRecord();
		ModelAndView mod = new ModelAndView("ClearSucessful");
		return mod;
	}


	@RequestMapping("*")
	@ResponseBody
	public String fallBackMethod(){

		return "You didnt write proper url..This is message from fallback method..";
	}


	@ExceptionHandler(value = EmptyResultDataAccessException.class)
	public ModelAndView handleExcp(Exception e){
		ModelAndView mod = new ModelAndView("ClearRecord");
		String msg="Invalid username. Please login again";
		mod.addObject("msg",msg);
		return mod;
	}


	@ExceptionHandler(value = DuplicateKeyException.class)
	public ModelAndView handleExcpOfDupEntry1(Exception e){
		ModelAndView mod = new ModelAndView("DuplicateDateMsg");
		String msg="Record for this date is already inserted.";
		mod.addObject("msg",msg);
		return mod;
	}


	@ExceptionHandler(value = DataIntegrityViolationException.class)
	public ModelAndView handleExcpforNullDate(Exception e){
		ModelAndView mod = new ModelAndView("DuplicateDateMsg");
		String msg="Date is not selected. Please select the date";
		mod.addObject("msg",msg);
		return mod;
	}




}
