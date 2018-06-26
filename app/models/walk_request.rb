class WalkRequest < ApplicationRecord
  belongs_to :user;
  belongs_to :dog;


end

      # this is the basis of what may become a scope to deal with our CURVEBALL

# @restricted_times = WalkRequests.where.not(walker_id: @user.id).walk_start_time
#   @restricted_times.each do |walk|
#     if walk + "whatever 30 minutes is" || walk.walk_start_time - "whatever 30 minutes is" != walk.walk_start_time do |w|
#       <tr>
#       <td> <%=w.date%> </td>
#       <td> <%=w.dog.name%> </td>
#       <td> <%=w.user.address_line_one%></td>
#       <td> <%=w.walk_start_time.strftime("%I:%M%P")%></td>
#       <td> <button type="button" class="w3-button w3-padding-small w3-tiny w3-round w3-red">Book!</button></td>
#     </tr>
#     <%end%>
      