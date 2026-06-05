package ModelDao;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import Entity.Appointments;


public class AppointmentsDao {

	// Add Appointment
	public boolean addAppointment(Appointments a) {

		boolean status = false;

		try {

			Connection con = DBUtil.makeConnection();

			String sql = "insert into appointments(patient_id,doctor_id,appointment_date,status,reason) values(?,?,?,?,?)";

			PreparedStatement ps = con.prepareStatement(sql);

			ps.setInt(1, a.getPatientId());
			ps.setInt(2, a.getDoctorId());
			ps.setTimestamp(3, a.getAppointmentDate());
			ps.setString(4, a.getStatus());
			ps.setString(5, a.getReason());

			int row = ps.executeUpdate();

			if (row > 0) {
				status = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

	// View All Appointments
	public List<Appointments> getAllAppointments() {

		List<Appointments> list = new ArrayList<>();

		try {

			Connection con = DBUtil.makeConnection();

			PreparedStatement ps = con.prepareStatement("select * from appointments");

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				Appointments a = new Appointments();

				a.setAppointmentId(rs.getInt("appointment_id"));

				a.setPatientId(rs.getInt("patient_id"));

				a.setDoctorId(rs.getInt("doctor_id"));

				a.setAppointmentDate(rs.getTimestamp("appointment_date"));

				a.setStatus(rs.getString("status"));

				a.setReason(rs.getString("reason"));

				list.add(a);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	// Search Appointment By ID
	public Appointments searchAppointment(int appointmentId) {

		Appointments a = null;

		try {

			Connection con = DBUtil.makeConnection();

			PreparedStatement ps = con.prepareStatement("select * from appointments where appointment_id=?");

			ps.setInt(1, appointmentId);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {

				a = new Appointments();

				a.setAppointmentId(rs.getInt("appointment_id"));

				a.setPatientId(rs.getInt("patient_id"));

				a.setDoctorId(rs.getInt("doctor_id"));

				a.setAppointmentDate(rs.getTimestamp("appointment_date"));

				a.setStatus(rs.getString("status"));

				a.setReason(rs.getString("reason"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return a;
	}

	// Update Appointment
	public boolean updateAppointment(Appointments a) {

		boolean status = false;

		try {

			Connection con = DBUtil.makeConnection();

			String sql = "update appointments set status=?, reason=? where appointment_id=?";

			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, a.getStatus());
			ps.setString(2, a.getReason());
			ps.setInt(3, a.getAppointmentId());

			int row = ps.executeUpdate();

			if (row > 0) {
				status = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

	// Delete Appointment
	public boolean deleteAppointment(int appointmentId) {

		boolean status = false;

		try {

			Connection con = DBUtil.makeConnection();

			PreparedStatement ps = con.prepareStatement("delete from appointments where appointment_id=?");

			ps.setInt(1, appointmentId);

			int row = ps.executeUpdate();

			if (row > 0) {
				status = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}
}