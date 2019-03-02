library verilog;
use verilog.vl_types.all;
entity VGA_Basis_v0 is
    port(
        CLK_50M_i       : in     vl_logic;
        RST_i           : in     vl_logic;
        HS_o            : out    vl_logic;
        VS_o            : out    vl_logic;
        CLK_220M_i      : out    vl_logic;
        VGA_SYNC        : out    vl_logic;
        VGA_BLANK       : out    vl_logic;
        RGB_R_o         : out    vl_logic_vector(7 downto 0);
        RGB_G_o         : out    vl_logic_vector(7 downto 0);
        RGB_B_o         : out    vl_logic_vector(7 downto 0)
    );
end VGA_Basis_v0;
