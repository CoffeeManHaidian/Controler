#!/usr/bin/env tclsh
# ============================================================================
# integrate_sfp_modules.tcl
# 功能：一键将新SFP+模块集成到Vivado项目
# 使用：在Vivado Tcl Console中执行: source integrate_sfp_modules.tcl
# ============================================================================

puts "=========================================="
puts "SFP+ 光模块集成脚本"
puts "=========================================="
puts ""

# 检查项目是否已打开
if {[catch {current_project} current_proj]} {
    puts "ERROR: 未检测到打开的Vivado项目"
    puts "请先打开项目: File → Open Project"
    exit 1
} else {
    puts "✓ 检测到项目: $current_proj"
}

# 定义文件路径
set project_root "D:/Controler/Controler"
set sources_dir "$project_root/Controler.srcs/sources_1/new"
set fileset "sources_1"

# 要添加的Verilog文件
set verilog_files [list \
    "$sources_dir/pcie_cmd_parser.v" \
    "$sources_dir/timer_1khz.v" \
    "$sources_dir/frame_builder_1khz.v" \
    "$sources_dir/sfp_plus_communication_top.v"
]

puts ""
puts "========== 步骤1: 添加Verilog源文件 =========="

foreach file $verilog_files {
    if {[file exists $file]} {
        puts "✓ 发现文件: [file tail $file]"
        # 添加到设计源
        add_files -fileset $fileset $file
    } else {
        puts "✗ 未找到文件: [file tail $file]"
        puts "  预期路径: $file"
    }
}

puts ""
puts "========== 步骤2: 刷新编译顺序 =========="
update_compile_order -fileset $fileset
puts "✓ 编译顺序已更新"

puts ""
puts "========== 步骤3: 检查语法 =========="
# 尝试运行synthesis检查 (可选)
catch {
    # 这会自动检查Verilog语法
    synth_design -mode default -top sfp_plus_communication_top -part xc7k325t -force
    puts "✓ 语法检查通过"
} result
puts "$result"

puts ""
puts "========== 步骤4: 集成完成 =========="
puts ""
puts "建议后续操作:"
puts "1. [ ] 修改 min_link_bd Block Design"
puts "2. [ ] 添加 timer_1khz IP核 (或使用RTL)"
puts "3. [ ] 添加 frame_builder_1khz IP核 (或使用RTL)"
puts "4. [ ] 连接PCIe → pcie_cmd_parser → frame_builder → GTX"
puts "5. [ ] 更新约束文件 (clk_only.xdc)"
puts "6. [ ] 运行仿真验证 (可选)"
puts "7. [ ] 执行综合和实现"
puts ""
puts "=========================================="
puts "集成脚本执行完成！"
puts "=========================================="

