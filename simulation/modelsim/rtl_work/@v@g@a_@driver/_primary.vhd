library verilog;
use verilog.vl_types.all;
entity VGA_Driver is
    generic(
        HOR_SYNC        : vl_logic_vector(0 to 11) := (Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0);
        H_BACK_PROCH    : vl_logic_vector(0 to 11) := (Hi0, Hi0, Hi0, Hi1, Hi0, Hi1, Hi0, Hi1, Hi1, Hi0, Hi0, Hi0);
        H_ADDR          : vl_logic_vector(0 to 11) := (Hi0, Hi1, Hi1, Hi1, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        H_FRONT_PROCH   : vl_logic_vector(0 to 11) := (Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0);
        H_TOTAL         : vl_logic_vector(0 to 11) := (Hi1, Hi0, Hi1, Hi0, Hi0, Hi0, Hi1, Hi1, Hi0, Hi0, Hi0, Hi0);
        VER_SYNC        : vl_logic_vector(0 to 11) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi1);
        V_BACK_PROCH    : vl_logic_vector(0 to 11) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi1, Hi0, Hi1, Hi0);
        V_ADDR          : vl_logic_vector(0 to 11) := (Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi1, Hi0, Hi0, Hi0);
        V_FRONT_PROCH   : vl_logic_vector(0 to 11) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1);
        V_TOTAL         : vl_logic_vector(0 to 11) := (Hi0, Hi1, Hi0, Hi0, Hi0, Hi1, Hi1, Hi0, Hi1, Hi0, Hi1, Hi0);
        BLACK_RGB       : integer := 0;
        BLUE_RGB        : integer := 255;
        GREEN_RGB       : integer := 65280;
        CYAN_RGB        : integer := 65535;
        RED_RGB         : integer := 16711680;
        PURPLE_RGB      : integer := 16711935;
        YELLOW_RGB      : integer := 16776960;
        WHITE_RGB       : integer := 16777215
    );
    port(
        CLK_50M_i       : in     vl_logic;
        RST_i           : in     vl_logic;
        CLK_220M_i      : in     vl_logic;
        PLL_LOCK        : in     vl_logic;
        RST_PLL_i       : out    vl_logic;
        HS_o            : out    vl_logic;
        VS_o            : out    vl_logic;
        VGA_SYNC        : out    vl_logic;
        VGA_BLANK       : out    vl_logic;
        RGB_R_o         : out    vl_logic_vector(7 downto 0);
        RGB_G_o         : out    vl_logic_vector(7 downto 0);
        RGB_B_o         : out    vl_logic_vector(7 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of HOR_SYNC : constant is 1;
    attribute mti_svvh_generic_type of H_BACK_PROCH : constant is 1;
    attribute mti_svvh_generic_type of H_ADDR : constant is 1;
    attribute mti_svvh_generic_type of H_FRONT_PROCH : constant is 1;
    attribute mti_svvh_generic_type of H_TOTAL : constant is 1;
    attribute mti_svvh_generic_type of VER_SYNC : constant is 1;
    attribute mti_svvh_generic_type of V_BACK_PROCH : constant is 1;
    attribute mti_svvh_generic_type of V_ADDR : constant is 1;
    attribute mti_svvh_generic_type of V_FRONT_PROCH : constant is 1;
    attribute mti_svvh_generic_type of V_TOTAL : constant is 1;
    attribute mti_svvh_generic_type of BLACK_RGB : constant is 1;
    attribute mti_svvh_generic_type of BLUE_RGB : constant is 1;
    attribute mti_svvh_generic_type of GREEN_RGB : constant is 1;
    attribute mti_svvh_generic_type of CYAN_RGB : constant is 1;
    attribute mti_svvh_generic_type of RED_RGB : constant is 1;
    attribute mti_svvh_generic_type of PURPLE_RGB : constant is 1;
    attribute mti_svvh_generic_type of YELLOW_RGB : constant is 1;
    attribute mti_svvh_generic_type of WHITE_RGB : constant is 1;
end VGA_Driver;
