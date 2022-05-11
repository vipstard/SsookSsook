package com.example.ssukssuk;

import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.Toast;

import com.example.ssukssuk.Find.Id.IdFindActivity;
import com.example.ssukssuk.Find.Pw.PwFindActivity;
import com.example.ssukssuk.VO.loginVO;

public class LoginActivity extends AppCompatActivity {
    Button login, basic,idfind,pwfind;
    EditText user_id, user_pw;
    CheckBox auto_check;
    String loginId,loginPwd;
    loginVO vo;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);

        vo = new loginVO();


        user_id = findViewById(R.id.user_id);
        user_pw = findViewById(R.id.user_pw);
        login = findViewById(R.id.btn_login);
        basic = findViewById(R.id.btn_sign);
        idfind = findViewById(R.id.btn_idfind);
        pwfind = findViewById(R.id.btn_pwfind);
        auto_check = findViewById(R.id.cbauto);
        SharedPreferences spf = LoginActivity.this.
                getSharedPreferences("mySPF", Context.MODE_PRIVATE);

        //editor 실행시키는?
        SharedPreferences.Editor editor = spf.edit();
        loginId = LoginActivity.this.getSharedPreferences("mySPF", Context.MODE_PRIVATE).
                getString("user_login_id",null);
        loginPwd = LoginActivity.this.getSharedPreferences("mySPF", Context.MODE_PRIVATE).
                getString("user_login_pw",null);

        if(loginId !=null && loginPwd != null) {
            if(loginId.equals("hh") && loginPwd.equals("hh")) {
                Toast.makeText(LoginActivity.this, loginId +"님 자동로그인 입니다.", Toast.LENGTH_SHORT).show();
                Intent intent = new Intent(LoginActivity.this, MainActivity.class);
                startActivity(intent);
                finish();
            }
        }

            login.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    if (user_id.getText().toString().equals("hh") && user_pw.getText().toString().equals("hh")) {
                        if(auto_check.isChecked()) {

                            SharedPreferences auto = getSharedPreferences("auto", Activity.MODE_PRIVATE);
                            Toast.makeText(LoginActivity.this, "여기까지 ok", Toast.LENGTH_SHORT).show();

                            editor.putString("user_login_id", user_id.getText().toString());
                            editor.putString("user_login_pw", user_id.getText().toString());
                            editor.commit();
                            //꼭 commit()을 해줘야 값이 저장됩니다 ㅎㅎ


                            Toast.makeText(LoginActivity.this, user_id.getText().toString() + "님 환영합니다.", Toast.LENGTH_SHORT).show();
                            Intent intent = new Intent(LoginActivity.this, MainActivity.class);

                            startActivity(intent);
                            finish();
                        }else{
                            SharedPreferences auto = getSharedPreferences("auto", Activity.MODE_PRIVATE);
                            Toast.makeText(LoginActivity.this, "여기까지 ok", Toast.LENGTH_SHORT).show();

                            editor.putString("user_login_id", user_id.getText().toString());
                            Toast.makeText(LoginActivity.this, user_id.getText().toString() + "님 환영합니다.", Toast.LENGTH_SHORT).show();
                            Intent intent = new Intent(LoginActivity.this, MainActivity.class);

                            startActivity(intent);
                            finish();
                        }

                    } else {
                        Toast.makeText(LoginActivity.this,
                                "로그인 실패",
                                Toast.LENGTH_SHORT).show();
                    }
                }
            });


        idfind.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(LoginActivity.this, IdFindActivity.class);
                startActivity(intent);
            }
        });
        pwfind.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(LoginActivity.this, PwFindActivity.class);
                startActivity(intent);
            }
        });


        basic.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                showDialog();
            }
        });







    }
    void showDialog() {
        AlertDialog.Builder msgBuilder = new AlertDialog.Builder(LoginActivity.this)
                .setTitle("회원가입페이지 이동")
                .setMessage("회원가입을 하시겠습니까?")
                .setPositiveButton("확인", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialogInterface, int i) {
                        Intent intent = new Intent(LoginActivity.this, SignActivity.class);

                        Toast.makeText(LoginActivity.this, "회원가입 페이지로 이동", Toast.LENGTH_SHORT).show();
                        startActivity(intent);
                    }
                }) .setNegativeButton("취소", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialogInterface, int i) {
                        Toast.makeText(LoginActivity.this, "회원 가입 ㄴㄴ", Toast.LENGTH_SHORT).show();
                    }
                });
        AlertDialog msgDlg = msgBuilder.create();
        msgDlg.show();
    }

    //현재 페이지에서 뒤로가기 막는 기능
    @Override
    public void onBackPressed() {
        //super.onBackPressed();
    }

}