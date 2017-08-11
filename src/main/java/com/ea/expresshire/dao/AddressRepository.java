package com.ea.expresshire.dao;
import com.ea.expresshire.model.Address;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by kcp on 8/10/17.
 */
public interface AddressRepository extends JpaRepository<Address, Long>{

}
