package pages;

import Utilities.GWD;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class DialogContent extends ParentPage{
    public DialogContent(){
        PageFactory.initElements(GWD.getDriver(),this);
    }
    @FindBy(css="[formcontrolname='username']")
    public WebElement username;

    @FindBy(css="input[formcontrolname='password']")
    public WebElement password;

    @FindBy(css="button[aria-label='LOGIN']")
    public WebElement loginButton;
    @FindBy(css="span[class='mat-mdc-tooltip-trigger logo-text']")
    public WebElement headText;



    public WebElement getWebElement(String strElement){
        switch (strElement){
            case "username": return this.username;
            case "password": return this.password;
            case "loginButton": return this.loginButton;
            case "headText": return this.headText;
        }
        return null;
    }


}
