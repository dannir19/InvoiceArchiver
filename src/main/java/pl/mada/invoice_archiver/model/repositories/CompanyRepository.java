package pl.mada.invoice_archiver.model.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.mada.invoice_archiver.model.entities.Company;

public interface CompanyRepository extends JpaRepository<Company, Long> {
}
