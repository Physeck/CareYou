<%@ Page Title="" Language="C#" MasterPageFile="~/Layouts/navbar.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CareYou.Views.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="home">
        <div class="top" style="--src: url(/Assets/HomePage/home-background.png)">
            <div class="title_container">
                <div class="title_flexbox">
                    <h1 class="app-title_box">
                        <span class="app-title"><span class="app-title_span0">Care</span><span class="app-title_span1">You</span></span>
                    </h1>
                    <h1 class="tagline_box">
                        <span class="tagline"><span class="tagline_span0">Join Us</span><span class="tagline_span1">
                            <br />
                            in Making Dreams a Reality</span></span>
                    </h1>
                    <button class="fundraise-btn">Start Fundraising</button>
                </div>
            </div>
        </div>
        <div class="bottom">
            <div class="discover-flexbox">
                <h1 class="discover-title">Discover</h1>
                <div class="programs-container">
                    <h1 class="section-title">Recommended Social Activities</h1>
                    <div class="card-container">
                        <asp:Repeater ID="ProgramRepeater" runat="server">
                            <ItemTemplate>
                                <div class='program-card-container<%# Container.ItemIndex == 0 ? " wide" : "" %>'>
                                    <div class='program-container<%# Container.ItemIndex == 0 ? " wide" : "" %>' style='--src: url(/Assets/Program/<%# Eval("ProgramImage") %>)' onclick="location.href='/Views/ProgramDetail?id=<%# Eval("ProgramID") %>'">
                                        <div class="program-container-content">
                                            <div class='program-container-content-flexbox<%# Container.ItemIndex == 0 ? " wide" : "" %>'>
                                                <h1 class='program-title<%# Container.ItemIndex == 0 ? " wide" : "" %>'><%# Eval("ProgramTitle") %></h1>
                                                <h3 class='fundraiser' <%# Container.ItemIndex == 0 ? " wide" : "" %>><%# Eval("FundraiserName") %></h3>
                                                <h2 class='raised<%# Container.ItemIndex == 0 ? " wide" : "" %>'>Rp <%# Eval("ProgramRaised", "{0:N0}") %> raised</h2>
                                                <div class='progress-bar<%# Container.ItemIndex == 0 ? " wide" : "" %>'>
                                                    <div class="progress-bar-inner" style="width: <%# Eval("Progress") %>%"></div>
                                                </div>
                                                <div class="brief-description"><%# Eval("ProgramDesc") %></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <!-- <div class="program-flexbox">
            <div class="program-flexbox-top">
              <div class="program-container-long" style="--src:url(/assets/8a4a0227664bc53ad355ead0a64ea1ff.png)">
                <div class="program-container-long-content">
                  <div class="program-container-long-content-flexbox">
                    <h1 class="program-title-long">Help with 2$ meal for hungry Orphans in Switzerland</h1>
                    <h3 class="fundraiser-long">John Doe</h3>
                    <h2 class="raised-long">Rp 100.500 raised</h2>
                    <img class="progressbar-long" src="/assets/d9f6b85b8d4f0bacad2ec4899fe92303.svg" alt="alt text" />
                  </div>
                </div>
              </div>
              <div class="program-container" style="--src:url(/assets/552d9685a556be1ccc1e4e7c92b9ed88.png)">
                <div class="program-container-content">
                  <div class="program-container-content-flexbox">
                    <h1 class="program-title">Support for Japan: Earthquake<br />Relief Campaign</h1>
                    <h3 class="fundraiser">John Doe</h3>
                    <h2 class="raised">Rp 364.000 raised</h2>
                    <img class="progressbar" src="/assets/53f6c2c612f23b21cecaa16681a82e88.svg" alt="alt text" />
                  </div>
                </div>
              </div>
            </div>
            <div class="program-flexbox-bottom">
              <div class="program-container" style="--src:url(/assets/2ff9b42e94009672bdf05a99ced08801.png)">
                <div class="program-container-content">
                  <div class="program-container-content-flexbox1">
                    <h1 class="program-title">Restoring Jakarta after The <br />Flood</h1>
                    <h3 class="fundraiser1">Leonard Benedict</h3>
                    <h2 class="raised1">Rp 25.000.000 raised</h2>
                    <img class="progressbar1" src="/assets/2fbd42eb01378389e533b462899e1742.svg" alt="alt text" />
                  </div>
                </div>
              </div>
              <div class="program-container" style="--src:url(/assets/67eb9aa9b8a754370ed1673859a66300.png)">
                <div class="program-container-content">
                  <div class="program-container-content-flexbox1">
                    <h1 class="program-title">Help House Indonesian <br />Landslide Evacuees with a...</h1>
                    <h3 class="fundraiser1">Dion Larry</h3>
                    <h2 class="raised1">Rp 26.100.000 raised</h2>
                    <img class="progressbar1" src="/assets/7ae7dfc8f0eeb86d4855f904aad8f434.svg" alt="alt text" />
                  </div>
                </div>
              </div>
              <div class="program-container1" style="--src:url(/assets/6667f740b9194ce233310f4d35721516.png)">
                <div class="program-container-content">
                  <div class="program-container-content-flexbox1">
                    <h1 class="program-title">End Hunger for African Children with Your Donation</h1>
                    <h3 class="fundraiser1">Reya Zoe</h3>
                    <h2 class="raised1">Rp 42.000.000 raised</h2>
                    <img class="progressbar1" src="/assets/df7bc028083e3d34cd27e7f25b1c79e8.svg" alt="alt text" />
                  </div>
                </div>
              </div>
            </div>
          </div> -->
                </div>
                <div class="programs-container1">
                    <h1 class="section-title1">Recommended Projects</h1>
                    <div class="program-flexbox">
                        <div class="program-flexbox-top">
                            <div class="program-container wide" style="--src: url(/Assets/Program/program1.png)">
                                <div class="program-container-content">
                                    <div class="program-container-content-flexbox wide">
                                        <h1 class="program-title wide">ArtBox Deluxe: The Ultimate Art Supply Organizer</h1>
                                        <h3 class="fundraiser wide">Creative Solutions</h3>
                                        <h2 class="raised wide">Rp 47.000.000 raised</h2>
                                        <img class="progressbar wide" src="/assets/59381e4447cd573ea86f42ef4a29e2bb.svg" alt="alt text" />
                                    </div>
                                </div>
                            </div>
                            <div class="program-container" style="--src: url(/assets/d4dbe7e11fc70126e0843cb3dcef06d3.png)">
                                <div class="program-container-content">
                                    <div class="program-container-content-flexbox">
                                        <h1 class="program-title">EcoHydrate Bottle: Versatile
                                            <br />
                                            and Sustainable Hydration...</h1>
                                        <h3 class="fundraiser wide">GreenLife</h3>
                                        <h2 class="raised wide">Rp 50.000.000 raised</h2>
                                        <img class="progressbar1" src="/assets/7f0dc156ea8a85728fd4dbca681fefd8.svg" alt="alt text" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="program-flexbox-bottom">
                            <div class="program-card-container">
                                <div class="program-container" style="--src: url(/assets/66b81f67bb759c24fd195ca71f88a231.png)">
                                    <div class="program-container-content">
                                        <div class="program-container-content-flexbox1">
                                            <h1 class="program-title">PowerMax Charger: Ultra-Fast and Portable Charging...</h1>
                                            <h3 class="fundraiser1">TechInnovate</h3>
                                            <h2 class="raised1">Rp 75.000.000 raised</h2>
                                            <img class="progressbar1" src="/assets/2fbd42eb01378389e533b462899e1742.svg" alt="alt text" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="program-container" style="--src: url(/assets/5f162ecd7fdd2542563ac989de436a71.png)">
                                <div class="program-container-content">
                                    <div class="program-container-content-flexbox1">
                                        <h1 class="program-title">Illuminating Minds: Books on Black Paper</h1>
                                        <h3 class="fundraiser1">BlackPage Publishing</h3>
                                        <h2 class="raised1">Rp 30.000.000 raised</h2>
                                        <img class="progressbar1" src="/assets/c67b66213cfd3dbe3b6737107683e854.svg" alt="alt text" />
                                    </div>
                                </div>
                            </div>
                            <div class="program-container" style="--src: url(/assets/eafcadbd7ce46686e0e2460a444b11c5.png)">
                                <div class="program-container-content">
                                    <div class="program-container-content-flexbox1">
                                        <h1 class="program-title">Pack for a Purpose: Durable Backpacks for Students</h1>
                                        <h3 class="fundraiser1">EduGear</h3>
                                        <h2 class="raised1">Rp 25.000.000 raised</h2>
                                        <img class="progressbar1" src="/assets/7f0dc156ea8a85728fd4dbca681fefd8.svg" alt="alt text" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <button class="viewmore-btn">View More</button>
            </div>
        </div>
    </section>
</asp:Content>
