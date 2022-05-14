package com.example.ssukssuk.ServiceCenter;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;


import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;


import com.example.ssukssuk.MainActivity;
import com.example.ssukssuk.R;
import com.google.firebase.database.ChildEventListener;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;

import java.util.HashMap;
import java.util.Map;


public class ScEditActivity extends AppCompatActivity {

    EditText edt_Title, edt_Post;
    Button btn_Edit;


    FirebaseDatabase database = FirebaseDatabase.getInstance();
    DatabaseReference myRef = database.getReference("ServiceCenter");


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_sc_edit);

        edt_Post = findViewById(R.id.edt_SEA_Post);
        edt_Title = findViewById(R.id.edt_SEA_Title);
        btn_Edit = findViewById(R.id.btn_SEA_Edit);

        Intent intent = getIntent();
        String title = intent.getStringExtra("ScTitle1");
        String writer = ScEditActivity.this.getSharedPreferences("mySPF", Context.MODE_PRIVATE).
                getString("user_login_id1", null);



        myRef.addChildEventListener(new ChildEventListener() {
            @Override
            public void onChildAdded(@NonNull DataSnapshot snapshot, @Nullable String previousChildName) {

                ScVO vo = snapshot.getValue(ScVO.class);

                if (writer.equals(vo.getWriter())&& title.equals(vo.getTitle())
                ){
                    Log.d("dasdasd1",vo.getWriter());
                    edt_Title.setText(vo.getTitle());
                    edt_Post.setText(vo.getPost());

                    btn_Edit.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public void onClick(View view) {

                            String a = snapshot.getKey();
                            DatabaseReference myRef2 = myRef.child(a);

                            String Edit_post = edt_Post.getText().toString();
                            String Edit_title = edt_Title.getText().toString();
                            Map<String, Object> updateMap = new HashMap<>();
                            updateMap.put("title",Edit_title);
                            updateMap.put("post",Edit_post);


                            myRef2.updateChildren(updateMap).addOnCompleteListener(task ->
                                    Log.d("dda","update title:"+task.isSuccessful()));
                            startActivity(new Intent(ScEditActivity.this,MainActivity.class));
                        }
                    });

                }


            }


            @Override
            public void onChildChanged(@NonNull DataSnapshot snapshot, @Nullable String previousChildName) {


            }

            @Override
            public void onChildRemoved(@NonNull DataSnapshot snapshot) {

            }

            @Override
            public void onChildMoved(@NonNull DataSnapshot snapshot, @Nullable String previousChildName) {

            }

            @Override
            public void onCancelled(@NonNull DatabaseError error) {

            }
        });


    }
}