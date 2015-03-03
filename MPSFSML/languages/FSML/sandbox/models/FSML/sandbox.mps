<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:aad60c1c-296e-4ef8-a2cc-2570afa68d56(FSML.sandbox)">
  <persistence version="8" />
  <language namespace="5a0a8169-907e-4e53-92bf-a2eb0315cf01(FSML)" />
  <language namespace="ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)" />
  <import index="8cr5" modelUID="r:d2442a1a-12b9-421f-907d-68f3c4008067(FSML.structure)" version="0" implicit="yes" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <root type="8cr5.Fsm" typeId="8cr5.3444490492901916594" id="3444490492902277399" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="TurnstileFsm" />
    <node role="states" roleId="8cr5.3444490492901972053" type="8cr5.State" typeId="8cr5.3444490492901938549" id="4715763527516131522" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="locked" />
      <node role="initial" roleId="8cr5.2195946186619148461" type="8cr5.Initial" typeId="8cr5.3444490492901972044" id="4715763527516153143" nodeInfo="ng" />
      <node role="transitions" roleId="8cr5.3444490492901972079" type="8cr5.Transition" typeId="8cr5.3444490492901971972" id="4715763527516153151" nodeInfo="ng">
        <link role="state" roleId="8cr5.3444490492902547539" targetNodeId="4715763527516153182" resolveInfo="unlocked" />
        <node role="input" roleId="8cr5.2195946186618209869" type="8cr5.Input" typeId="8cr5.3444490492901972036" id="4715763527516153155" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="ticket" />
        </node>
        <node role="action" roleId="8cr5.2195946186618209879" type="8cr5.Action" typeId="8cr5.3444490492901972029" id="4715763527516153180" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="collect" />
        </node>
      </node>
      <node role="transitions" roleId="8cr5.3444490492901972079" type="8cr5.Transition" typeId="8cr5.3444490492901971972" id="4715763527516153158" nodeInfo="ng">
        <link role="state" roleId="8cr5.3444490492902547539" targetNodeId="4715763527516153219" resolveInfo="exception" />
        <node role="input" roleId="8cr5.2195946186618209869" type="8cr5.Input" typeId="8cr5.3444490492901972036" id="4715763527516153159" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="pass" />
        </node>
        <node role="action" roleId="8cr5.2195946186618209879" type="8cr5.Action" typeId="8cr5.3444490492901972029" id="4715763527516153164" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="alarm" />
        </node>
      </node>
    </node>
    <node role="states" roleId="8cr5.3444490492901972053" type="8cr5.State" typeId="8cr5.3444490492901938549" id="4715763527516153182" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="unlocked" />
      <node role="transitions" roleId="8cr5.3444490492901972079" type="8cr5.Transition" typeId="8cr5.3444490492901971972" id="4715763527516153192" nodeInfo="ng">
        <node role="input" roleId="8cr5.2195946186618209869" type="8cr5.Input" typeId="8cr5.3444490492901972036" id="4715763527516153193" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="ticket" />
        </node>
        <node role="action" roleId="8cr5.2195946186618209879" type="8cr5.Action" typeId="8cr5.3444490492901972029" id="4715763527516153196" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="eject" />
        </node>
      </node>
      <node role="transitions" roleId="8cr5.3444490492901972079" type="8cr5.Transition" typeId="8cr5.3444490492901971972" id="4715763527516153198" nodeInfo="ng">
        <link role="state" roleId="8cr5.3444490492902547539" targetNodeId="4715763527516131522" resolveInfo="locked" />
        <node role="input" roleId="8cr5.2195946186618209869" type="8cr5.Input" typeId="8cr5.3444490492901972036" id="4715763527516153199" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="pass" />
        </node>
      </node>
    </node>
    <node role="states" roleId="8cr5.3444490492901972053" type="8cr5.State" typeId="8cr5.3444490492901938549" id="4715763527516153219" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="exception" />
      <node role="transitions" roleId="8cr5.3444490492901972079" type="8cr5.Transition" typeId="8cr5.3444490492901971972" id="4715763527516153235" nodeInfo="ng">
        <node role="input" roleId="8cr5.2195946186618209869" type="8cr5.Input" typeId="8cr5.3444490492901972036" id="4715763527516153236" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="ticket" />
        </node>
        <node role="action" roleId="8cr5.2195946186618209879" type="8cr5.Action" typeId="8cr5.3444490492901972029" id="4715763527516153239" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="eject" />
        </node>
      </node>
      <node role="transitions" roleId="8cr5.3444490492901972079" type="8cr5.Transition" typeId="8cr5.3444490492901971972" id="4715763527516153323" nodeInfo="ng">
        <node role="input" roleId="8cr5.2195946186618209869" type="8cr5.Input" typeId="8cr5.3444490492901972036" id="4715763527516153324" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="pass" />
        </node>
      </node>
      <node role="transitions" roleId="8cr5.3444490492901972079" type="8cr5.Transition" typeId="8cr5.3444490492901971972" id="4715763527516153241" nodeInfo="ng">
        <node role="input" roleId="8cr5.2195946186618209869" type="8cr5.Input" typeId="8cr5.3444490492901972036" id="4715763527516153242" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="mute" />
        </node>
      </node>
      <node role="transitions" roleId="8cr5.3444490492901972079" type="8cr5.Transition" typeId="8cr5.3444490492901971972" id="4715763527516153248" nodeInfo="ng">
        <link role="state" roleId="8cr5.3444490492902547539" targetNodeId="4715763527516131522" resolveInfo="locked" />
        <node role="input" roleId="8cr5.2195946186618209869" type="8cr5.Input" typeId="8cr5.3444490492901972036" id="4715763527516153249" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="release" />
        </node>
      </node>
    </node>
  </root>
</model>

