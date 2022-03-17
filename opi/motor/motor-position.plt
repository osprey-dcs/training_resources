<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<databrowser>
    <title>Motor Position</title>
    <save_changes>true</save_changes>
    <show_legend>true</show_legend>
    <show_toolbar>false</show_toolbar>
    <grid>true</grid>
    <scroll>true</scroll>
    <update_period>3.0</update_period>
    <scroll_step>5</scroll_step>
    <start>-90.0 seconds</start>
    <end>now</end>
    <archive_rescale>NONE</archive_rescale>
    <background>
        <red>255</red>
        <green>255</green>
        <blue>255</blue>
    </background>
    <title_font>Liberation Sans|20|1</title_font>
    <label_font>Liberation Sans|14|1</label_font>
    <scale_font>Liberation Sans|12|0</scale_font>
    <legend_font>Liberation Sans|14|0</legend_font>
    <axes>
        <axis>
            <visible>true</visible>
            <name>Degrees</name>
            <use_axis_name>true</use_axis_name>
            <use_trace_names>false</use_trace_names>
            <right>false</right>
            <color>
                <red>0</red>
                <green>0</green>
                <blue>0</blue>
            </color>
            <min>36.0</min>
            <max>124.0</max>
            <grid>true</grid>
            <autoscale>true</autoscale>
            <log_scale>false</log_scale>
        </axis>
    </axes>
    <annotations>
    </annotations>
    <pvlist>
        <pv>
            <display_name>Position</display_name>
            <visible>true</visible>
            <name>XF:31IDA-OP{Tbl-Ax:X1}Mtr.RBV</name>
            <axis>0</axis>
            <color>
                <red>0</red>
                <green>0</green>
                <blue>255</blue>
            </color>
            <trace_type>AREA</trace_type>
            <linewidth>2</linewidth>
            <point_type>NONE</point_type>
            <point_size>2</point_size>
            <waveform_index>0</waveform_index>
            <period>0.0</period>
            <ring_size>5000</ring_size>
            <request>OPTIMIZED</request>
            <archive>
                <name>EPICS Archiver Appliance</name>
                <url>pbraw://localhost:17665/retrieval</url>
                <key>1</key>
            </archive>
        </pv>
        <pv>
            <display_name>Set Point</display_name>
            <visible>true</visible>
            <name>XF:31IDA-OP{Tbl-Ax:X1}Mtr.VAL</name>
            <axis>0</axis>
            <color>
                <red>255</red>
                <green>0</green>
                <blue>0</blue>
            </color>
            <trace_type>AREA</trace_type>
            <linewidth>2</linewidth>
            <point_type>NONE</point_type>
            <point_size>2</point_size>
            <waveform_index>0</waveform_index>
            <period>0.0</period>
            <ring_size>5000</ring_size>
            <request>OPTIMIZED</request>
            <archive>
                <name>Local Archiver</name>
                <url>pbraw://localhost:17665/retrieval</url>
                <key>1</key>
            </archive>
        </pv>
    </pvlist>
</databrowser>