import jolie.runtime.JavaService;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import jolie.runtime.Value;


public class Match extends JavaService{
    public Boolean match(Value matchType) {
        String regex = matchType.getChildren("pattern").get(0).strValue();
        String text = matchType.getChildren("text").get(0).strValue();
        Pattern r = Pattern.compile(regex);

        Matcher m = r.matcher(text);
        return m.matches();
    }
}

