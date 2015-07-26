package com.example.prathamalumni;

import android.os.Bundle;
import android.app.Activity;
import android.view.Menu;
import android.webkit.WebView;

public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        
        WebView webView =(WebView) findViewById(R.id.webView1);
        webView.getSettings().setJavaScriptEnabled(true);
		webView.loadUrl("http://ec2-54-169-128-170.ap-southeast-1.compute.amazonaws.com:8080/demo.html");
    }


    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.main, menu);
        return true;
    }
    
}
