<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:d951b1c6-9ac2-492e-b28a-c6f01d3244bf(fsml.sandbox)">
  <persistence version="8" />
  <language namespace="d2f70ffe-48a1-455e-ac16-06dde5f51fc9(fsml)" />
  <language namespace="ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)" />
  <import index="6vx7" modelUID="r:a2d573a5-c15e-4537-bcf2-91f728b6f27e(fsml.structure)" version="-1" implicit="yes" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <root type="6vx7.Fsm" typeId="6vx7.8379703051989768850" id="8379703051990001297" nodeInfo="ng">
    <node role="states" roleId="6vx7.8379703051989824382" type="6vx7.State" typeId="6vx7.8379703051989824375" id="8379703051990702879" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="locked" />
      <node role="transitions" roleId="6vx7.8379703051990045789" type="6vx7.Transition" typeId="6vx7.8379703051989824389" id="8379703051990702881" nodeInfo="ng">
        <link role="state" roleId="6vx7.8379703051989824429" targetNodeId="8379703051990717860" resolveInfo="unlocked" />
        <node role="input" roleId="6vx7.8379703051989824447" type="6vx7.Input" typeId="6vx7.8379703051989824390" id="8379703051990702882" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="ticket" />
        </node>
        <node role="action" roleId="6vx7.8379703051989824444" type="6vx7.Action" typeId="6vx7.8379703051989824414" id="8379703051990702885" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="collect" />
        </node>
      </node>
      <node role="transitions" roleId="6vx7.8379703051990045789" type="6vx7.Transition" typeId="6vx7.8379703051989824389" id="8379703051990702887" nodeInfo="ng">
        <node role="input" roleId="6vx7.8379703051989824447" type="6vx7.Input" typeId="6vx7.8379703051989824390" id="8379703051990702888" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="pass" />
        </node>
        <node role="action" roleId="6vx7.8379703051989824444" type="6vx7.Action" typeId="6vx7.8379703051989824414" id="8379703051990702894" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="alarm" />
        </node>
      </node>
      <node role="initial" roleId="6vx7.8379703051990053359" type="6vx7.Initial" typeId="6vx7.8379703051990045738" id="8379703051990784156" nodeInfo="ng" />
    </node>
    <node role="states" roleId="6vx7.8379703051989824382" type="6vx7.State" typeId="6vx7.8379703051989824375" id="8379703051990717860" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="unlocked" />
      <node role="transitions" roleId="6vx7.8379703051990045789" type="6vx7.Transition" typeId="6vx7.8379703051989824389" id="8379703051990717869" nodeInfo="ng">
        <node role="input" roleId="6vx7.8379703051989824447" type="6vx7.Input" typeId="6vx7.8379703051989824390" id="8379703051990717870" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="ticket" />
        </node>
        <node role="action" roleId="6vx7.8379703051989824444" type="6vx7.Action" typeId="6vx7.8379703051989824414" id="8379703051990717873" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="eject" />
        </node>
      </node>
      <node role="transitions" roleId="6vx7.8379703051990045789" type="6vx7.Transition" typeId="6vx7.8379703051989824389" id="8379703051990717875" nodeInfo="ng">
        <link role="state" roleId="6vx7.8379703051989824429" targetNodeId="8379703051990702879" resolveInfo="locked" />
        <node role="input" roleId="6vx7.8379703051989824447" type="6vx7.Input" typeId="6vx7.8379703051989824390" id="8379703051990717876" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="pass" />
        </node>
      </node>
    </node>
    <node role="states" roleId="6vx7.8379703051989824382" type="6vx7.State" typeId="6vx7.8379703051989824375" id="8379703051990717896" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="exception" />
      <node role="transitions" roleId="6vx7.8379703051990045789" type="6vx7.Transition" typeId="6vx7.8379703051989824389" id="8379703051990717911" nodeInfo="ng">
        <node role="input" roleId="6vx7.8379703051989824447" type="6vx7.Input" typeId="6vx7.8379703051989824390" id="8379703051990717912" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="ticket" />
        </node>
        <node role="action" roleId="6vx7.8379703051989824444" type="6vx7.Action" typeId="6vx7.8379703051989824414" id="8379703051990717915" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="eject" />
        </node>
      </node>
      <node role="transitions" roleId="6vx7.8379703051990045789" type="6vx7.Transition" typeId="6vx7.8379703051989824389" id="8379703051990717917" nodeInfo="ng">
        <node role="input" roleId="6vx7.8379703051989824447" type="6vx7.Input" typeId="6vx7.8379703051989824390" id="8379703051990717918" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="pass" />
        </node>
      </node>
      <node role="transitions" roleId="6vx7.8379703051990045789" type="6vx7.Transition" typeId="6vx7.8379703051989824389" id="8379703051990717924" nodeInfo="ng">
        <node role="input" roleId="6vx7.8379703051989824447" type="6vx7.Input" typeId="6vx7.8379703051989824390" id="8379703051990717925" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="mute" />
        </node>
      </node>
      <node role="transitions" roleId="6vx7.8379703051990045789" type="6vx7.Transition" typeId="6vx7.8379703051989824389" id="8379703051990717933" nodeInfo="ng">
        <link role="state" roleId="6vx7.8379703051989824429" targetNodeId="8379703051990717860" resolveInfo="unlocked" />
        <node role="input" roleId="6vx7.8379703051989824447" type="6vx7.Input" typeId="6vx7.8379703051989824390" id="8379703051990717934" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="release" />
        </node>
      </node>
    </node>
  </root>
</model>

