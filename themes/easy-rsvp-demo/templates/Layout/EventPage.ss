<!-- BEGIN CONTENT WRAPPER -->
<div class="content">
    <div class="container">
        <div class="row">

            $Content

            <div class="event">
                <% with $Event %>

                    <h2>$Title</h2>

                    <h3>From: $StartDate.Nice  <% if $EndDate %> - Until: $EndDate.Nice<% end_if %> </h3>

                    <div class="event-header-image">
                        $HeaderPhoto.CroppedImage(600,300)
                    </div>

                    <p class="event-description">$Description</p>

                    <% if $EventImages %>
                        <h3>Images</h3>

                        <div class="slider">

                            <% loop $EventImages %>

                                <input type="radio" name="slide_switch" id="id$Pos" <% if Pos = 2 %>checked="checked"<% end_if %>/>
                                <label for="id$Pos">
                                    <img src="$Image.CroppedImage(100, 60).URL" alt="$Image.AltText"/>
                                </label>

                                <% if $Width && $Height %>
                                    <img src="$Image.CroppedImage($Width,$Height).URL" alt="$Image.AltText"/>
                                <% else_if $Up.EventImagesWidth && $Up.EventImagesHeight %>
                                    <img src="$Image.CroppedImage($Up.EventImagesWidth, $Up.EventImagesHeight).URL" alt="$Image.AltText"/>
                                <% else %>
                                    <img src="$Image.URL" alt="$Image.AltText"/>
                                <% end_if %>


                            <% end_loop %>

                        </div>
                    <% end_if %>

                    <% if $EventFiles %>
                        <h3>Files</h3>
                        <ul class="files">
                            <% loop $EventFiles %>
                                <li><a href="$File.URL">$Title <span>($File.Size)</span></a></li>
                            <% end_loop %>
                        </ul>
                    <% end_if %>

                <% end_with %>
            </div>

            <h3>Sign Up</h3>

            <% if $AvailableSpots != 0 %>

                <% if $AvailableSpots %>
                    <p>Number of attendees is limited, only <b>$AvailableSpots</b> left!</p>
                <% end_if %>

                $SignUpForm

            <% else %>

                <p>Sorry! This event is fully booked. </p>

            <% end_if %>

        </div>
    </div>
</div>
<!-- END CONTENT WRAPPER -->