<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:aad60c1c-296e-4ef8-a2cc-2570afa68d56(FSML.sandbox)">
  <persistence version="8" />
  <language namespace="5a0a8169-907e-4e53-92bf-a2eb0315cf01(FSML)" />
  <language namespace="ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)" />
  <import index="8cr5" modelUID="r:d2442a1a-12b9-421f-907d-68f3c4008067(FSML.structure)" version="0" implicit="yes" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <root type="8cr5.Fsm" typeId="8cr5.3444490492901916594" id="3444490492902277399" nodeInfo="ng">
    <node role="states" roleId="8cr5.3444490492901972053" type="8cr5.State" typeId="8cr5.3444490492901938549" id="2195946186619178244" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="locked" />
      <node role="initial" roleId="8cr5.2195946186619148461" type="8cr5.Initial" typeId="8cr5.3444490492901972044" id="2195946186619178248" nodeInfo="ng" />
      <node role="transitions" roleId="8cr5.3444490492901972079" type="8cr5.Transition" typeId="8cr5.3444490492901971972" id="2195946186619178253" nodeInfo="ng">
        <node role="input" roleId="8cr5.2195946186618209869" type="8cr5.Input" typeId="8cr5.3444490492901972036" id="2195946186619178254" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="ticket" />
        </node>
        <node role="action" roleId="8cr5.2195946186618209879" type="8cr5.Action" typeId="8cr5.3444490492901972029" id="2195946186619178257" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="collect" />
        </node>
      </node>
      <node role="transitions" roleId="8cr5.3444490492901972079" type="8cr5.Transition" typeId="8cr5.3444490492901971972" id="2195946186619178280" nodeInfo="ng">
        <node role="input" roleId="8cr5.2195946186618209869" type="8cr5.Input" typeId="8cr5.3444490492901972036" id="2195946186619178281" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="pass" />
        </node>
        <node role="action" roleId="8cr5.2195946186618209879" type="8cr5.Action" typeId="8cr5.3444490492901972029" id="2195946186619178287" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="alarm" />
        </node>
      </node>
    </node>
    <node role="states" roleId="8cr5.3444490492901972053" type="8cr5.State" typeId="8cr5.3444490492901938549" id="2195946186619178325" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="unlocked" />
      <node role="transitions" roleId="8cr5.3444490492901972079" type="8cr5.Transition" typeId="8cr5.3444490492901971972" id="2195946186619178351" nodeInfo="ng">
        <node role="input" roleId="8cr5.2195946186618209869" type="8cr5.Input" typeId="8cr5.3444490492901972036" id="2195946186619178352" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="ticket" />
        </node>
        <node role="action" roleId="8cr5.2195946186618209879" type="8cr5.Action" typeId="8cr5.3444490492901972029" id="2195946186619178355" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="eject" />
        </node>
      </node>
      <node role="transitions" roleId="8cr5.3444490492901972079" type="8cr5.Transition" typeId="8cr5.3444490492901971972" id="2195946186619178357" nodeInfo="ng">
        <link role="state" roleId="8cr5.3444490492902547539" targetNodeId="2195946186619178244" resolveInfo="locked" />
        <node role="input" roleId="8cr5.2195946186618209869" type="8cr5.Input" typeId="8cr5.3444490492901972036" id="2195946186619178358" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="pass" />
        </node>
      </node>
    </node>
    <node role="states" roleId="8cr5.3444490492901972053" type="8cr5.State" typeId="8cr5.3444490492901938549" id="2195946186619178289" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="exception" />
      <node role="transitions" roleId="8cr5.3444490492901972079" type="8cr5.Transition" typeId="8cr5.3444490492901971972" id="2195946186619178380" nodeInfo="ng">
        <node role="input" roleId="8cr5.2195946186618209869" type="8cr5.Input" typeId="8cr5.3444490492901972036" id="2195946186619178381" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="ticket" />
        </node>
        <node role="action" roleId="8cr5.2195946186618209879" type="8cr5.Action" typeId="8cr5.3444490492901972029" id="2195946186619178384" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="eject" />
        </node>
      </node>
      <node role="transitions" roleId="8cr5.3444490492901972079" type="8cr5.Transition" typeId="8cr5.3444490492901971972" id="2195946186619178414" nodeInfo="ng">
        <node role="input" roleId="8cr5.2195946186618209869" type="8cr5.Input" typeId="8cr5.3444490492901972036" id="2195946186619178415" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="pass" />
        </node>
      </node>
      <node role="transitions" roleId="8cr5.3444490492901972079" type="8cr5.Transition" typeId="8cr5.3444490492901971972" id="2195946186619178386" nodeInfo="ng">
        <node role="input" roleId="8cr5.2195946186618209869" type="8cr5.Input" typeId="8cr5.3444490492901972036" id="2195946186619178387" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="mute" />
        </node>
      </node>
      <node role="transitions" roleId="8cr5.3444490492901972079" type="8cr5.Transition" typeId="8cr5.3444490492901971972" id="2195946186619178423" nodeInfo="ng">
        <link role="state" roleId="8cr5.3444490492902547539" targetNodeId="2195946186619178244" resolveInfo="locked" />
        <node role="input" roleId="8cr5.2195946186618209869" type="8cr5.Input" typeId="8cr5.3444490492901972036" id="2195946186619178424" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="release" />
        </node>
      </node>
    </node>
  </root>
</model>

