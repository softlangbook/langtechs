<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f4c1927b-a790-4c5f-9736-09108b185090(fsml.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="c07fade6-62c9-4222-a52b-3d2f0dcdd056" name="fsml" version="-1" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="-1" />
  </languages>
  <imports />
  <registry>
    <language id="c07fade6-62c9-4222-a52b-3d2f0dcdd056" name="fsml">
      <concept id="6487079096822411361" name="fsml.structure.Initial" flags="ng" index="3hW8LK" />
      <concept id="6487079096822398267" name="fsml.structure.Action" flags="ng" index="3hWO4E" />
      <concept id="6487079096822398248" name="fsml.structure.Input" flags="ng" index="3hWO4T" />
      <concept id="6487079096822107112" name="fsml.structure.Fsm" flags="ng" index="3hXNvT">
        <child id="6487079096822153285" name="states" index="3hXfLk" />
      </concept>
      <concept id="6487079096822131023" name="fsml.structure.Transition" flags="ng" index="3hXPlu">
        <reference id="6487079096822153326" name="target" index="3hXfLZ" />
        <child id="6487079096822398303" name="action" index="3hWO5e" />
        <child id="6487079096822398320" name="input" index="3hWO5x" />
      </concept>
      <concept id="6487079096822131022" name="fsml.structure.State" flags="ng" index="3hXPlv">
        <child id="6487079096822411385" name="initial" index="3hW8LC" />
        <child id="6487079096822153291" name="transitions" index="3hXfLq" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3hXNvT" id="5C6J16bXuh5">
    <node concept="3hXPlv" id="5C6J16bXEGw" role="3hXfLk">
      <property role="TrG5h" value="locked" />
      <node concept="3hW8LK" id="5C6J16bXEGy" role="3hW8LC" />
      <node concept="3hXPlu" id="5C6J16bXEG$" role="3hXfLq">
        <ref role="3hXfLZ" node="5C6J16bZhjd" resolve="unlocked" />
        <node concept="3hWO4T" id="5C6J16bZdnl" role="3hWO5x">
          <property role="TrG5h" value="ticket" />
        </node>
        <node concept="3hWO4E" id="5C6J16bZdno" role="3hWO5e">
          <property role="TrG5h" value="collect" />
        </node>
      </node>
      <node concept="3hXPlu" id="5C6J16bZdnq" role="3hXfLq">
        <ref role="3hXfLZ" node="5C6J16bZj6a" resolve="exception" />
        <node concept="3hWO4T" id="5C6J16bZdnr" role="3hWO5x">
          <property role="TrG5h" value="pass" />
        </node>
        <node concept="3hWO4E" id="5C6J16bZdnD" role="3hWO5e">
          <property role="TrG5h" value="alarm" />
        </node>
      </node>
    </node>
    <node concept="3hXPlv" id="5C6J16bZhjd" role="3hXfLk">
      <property role="TrG5h" value="unlocked" />
      <node concept="3hXPlu" id="5C6J16bZj6Q" role="3hXfLq">
        <node concept="3hWO4T" id="5C6J16bZj6R" role="3hWO5x">
          <property role="TrG5h" value="ticket" />
        </node>
        <node concept="3hWO4E" id="5C6J16bZj6U" role="3hWO5e">
          <property role="TrG5h" value="eject" />
        </node>
      </node>
      <node concept="3hXPlu" id="5C6J16bZj6W" role="3hXfLq">
        <ref role="3hXfLZ" node="5C6J16bXEGw" resolve="locked" />
        <node concept="3hWO4T" id="5C6J16bZj6X" role="3hWO5x">
          <property role="TrG5h" value="pass" />
        </node>
      </node>
    </node>
    <node concept="3hXPlv" id="5C6J16bZj6a" role="3hXfLk">
      <property role="TrG5h" value="exception" />
      <node concept="3hXPlu" id="5C6J16bZj6l" role="3hXfLq">
        <node concept="3hWO4T" id="5C6J16bZj6m" role="3hWO5x">
          <property role="TrG5h" value="ticket" />
        </node>
        <node concept="3hWO4E" id="5C6J16bZj6p" role="3hWO5e">
          <property role="TrG5h" value="eject" />
        </node>
      </node>
      <node concept="3hXPlu" id="5C6J16bZj6r" role="3hXfLq">
        <node concept="3hWO4T" id="5C6J16bZj6s" role="3hWO5x">
          <property role="TrG5h" value="pass" />
        </node>
      </node>
      <node concept="3hXPlu" id="5C6J16bZj6y" role="3hXfLq">
        <node concept="3hWO4T" id="5C6J16bZj6z" role="3hWO5x">
          <property role="TrG5h" value="mute" />
        </node>
      </node>
      <node concept="3hXPlu" id="5C6J16bZj6F" role="3hXfLq">
        <ref role="3hXfLZ" node="5C6J16bXEGw" resolve="locked" />
        <node concept="3hWO4T" id="5C6J16bZj6G" role="3hWO5x">
          <property role="TrG5h" value="release" />
        </node>
      </node>
    </node>
  </node>
</model>

