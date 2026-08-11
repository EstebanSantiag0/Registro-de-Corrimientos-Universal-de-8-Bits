<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="C" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_18" />
        <signal name="O(15:0)" />
        <signal name="O(8)" />
        <signal name="S" />
        <port polarity="Input" name="C" />
        <port polarity="Output" name="S" />
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="cc16ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="64" x="320" y="-268" height="24" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="pulldown">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-160" y2="-128" x1="64" />
            <line x2="60" y1="0" y2="0" x1="68" />
            <line x2="52" y1="-16" y2="-16" x1="76" />
            <line x2="40" y1="-32" y2="-32" x1="88" />
            <line x2="64" y1="-108" y2="-128" x1="64" />
            <line x2="64" y1="-104" y2="-108" x1="80" />
            <line x2="80" y1="-88" y2="-104" x1="48" />
            <line x2="48" y1="-72" y2="-88" x1="80" />
            <line x2="80" y1="-56" y2="-72" x1="48" />
            <line x2="48" y1="-48" y2="-56" x1="64" />
            <line x2="64" y1="-32" y2="-48" x1="64" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <block symbolname="cc16ce" name="XLXI_8">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="XLXN_16" name="CE" />
            <blockpin signalname="XLXN_18" name="CLR" />
            <blockpin signalname="XLXN_15" name="CEO" />
            <blockpin name="Q(15:0)" />
            <blockpin name="TC" />
        </block>
        <block symbolname="cc16ce" name="XLXI_9">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="XLXN_15" name="CE" />
            <blockpin signalname="XLXN_18" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="O(15:0)" name="Q(15:0)" />
            <blockpin name="TC" />
        </block>
        <block symbolname="pulldown" name="XLXI_10">
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_11">
            <blockpin signalname="XLXN_16" name="P" />
        </block>
        <block symbolname="buf" name="XLXI_14">
            <blockpin signalname="O(8)" name="I" />
            <blockpin signalname="S" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="976" y="1504" name="XLXI_8" orien="R0" />
        <instance x="1760" y="1472" name="XLXI_9" orien="R0" />
        <branch name="C">
            <wire x2="880" y1="1376" y2="1376" x1="832" />
            <wire x2="880" y1="1376" y2="1552" x1="880" />
            <wire x2="1680" y1="1552" y2="1552" x1="880" />
            <wire x2="976" y1="1376" y2="1376" x1="880" />
            <wire x2="1760" y1="1344" y2="1344" x1="1680" />
            <wire x2="1680" y1="1344" y2="1552" x1="1680" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="1664" y1="1312" y2="1312" x1="1360" />
            <wire x2="1664" y1="1280" y2="1312" x1="1664" />
            <wire x2="1760" y1="1280" y2="1280" x1="1664" />
        </branch>
        <iomarker fontsize="28" x="832" y="1376" name="C" orien="R180" />
        <instance x="1168" y="1792" name="XLXI_10" orien="R0" />
        <instance x="816" y="1280" name="XLXI_11" orien="R0" />
        <branch name="XLXN_16">
            <wire x2="880" y1="1280" y2="1312" x1="880" />
            <wire x2="976" y1="1312" y2="1312" x1="880" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="976" y1="1472" y2="1600" x1="976" />
            <wire x2="1232" y1="1600" y2="1600" x1="976" />
            <wire x2="1232" y1="1600" y2="1632" x1="1232" />
            <wire x2="1760" y1="1600" y2="1600" x1="1232" />
            <wire x2="1760" y1="1440" y2="1600" x1="1760" />
        </branch>
        <branch name="O(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="1216" type="branch" />
            <wire x2="2256" y1="1216" y2="1216" x1="2144" />
            <wire x2="2352" y1="1216" y2="1216" x1="2256" />
            <wire x2="2400" y1="1216" y2="1216" x1="2352" />
            <wire x2="2480" y1="1216" y2="1216" x1="2400" />
            <wire x2="2480" y1="1216" y2="1360" x1="2480" />
            <wire x2="2480" y1="1360" y2="1376" x1="2480" />
            <wire x2="2480" y1="1376" y2="1408" x1="2480" />
            <wire x2="2480" y1="1408" y2="1440" x1="2480" />
            <wire x2="2480" y1="1440" y2="1600" x1="2480" />
        </branch>
        <instance x="2784" y="1472" name="XLXI_14" orien="R0" />
        <bustap x2="2576" y1="1440" y2="1440" x1="2480" />
        <branch name="O(8)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2624" y="1440" type="branch" />
            <wire x2="2624" y1="1440" y2="1440" x1="2576" />
            <wire x2="2784" y1="1440" y2="1440" x1="2624" />
        </branch>
        <branch name="S">
            <wire x2="3040" y1="1440" y2="1440" x1="3008" />
        </branch>
        <iomarker fontsize="28" x="3040" y="1440" name="S" orien="R0" />
    </sheet>
</drawing>