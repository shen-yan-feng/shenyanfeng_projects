/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import javax.persistence.EntityManager;
import model.Address;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Administrator
 */
public class AddressJpaControllerTest {
    
    public AddressJpaControllerTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of getEntityManager method, of class AddressJpaController.
     */
    @Test
    public void testGetEntityManager() {
        System.out.println("getEntityManager");
        AddressJpaController instance = null;
        EntityManager expResult = null;
        EntityManager result = instance.getEntityManager();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of create method, of class AddressJpaController.
     */
    @Test
    public void testCreate() {
        System.out.println("create");
        Address address = null;
        AddressJpaController instance = null;
        instance.create(address);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of edit method, of class AddressJpaController.
     */
    @Test
    public void testEdit() throws Exception {
        System.out.println("edit");
        Address address = null;
        AddressJpaController instance = null;
        instance.edit(address);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of destroy method, of class AddressJpaController.
     */
    @Test
    public void testDestroy() throws Exception {
        System.out.println("destroy");
        Long id = null;
        AddressJpaController instance = null;
        instance.destroy(id);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of findAddressEntities method, of class AddressJpaController.
     */
    @Test
    public void testFindAddressEntities_0args() {
        System.out.println("findAddressEntities");
        AddressJpaController instance = null;
        List<Address> expResult = null;
        List<Address> result = instance.findAddressEntities();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of findAddressEntities method, of class AddressJpaController.
     */
    @Test
    public void testFindAddressEntities_int_int() {
        System.out.println("findAddressEntities");
        int maxResults = 0;
        int firstResult = 0;
        AddressJpaController instance = null;
        List<Address> expResult = null;
        List<Address> result = instance.findAddressEntities(maxResults, firstResult);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of findAddress method, of class AddressJpaController.
     */
    @Test
    public void testFindAddress() {
        System.out.println("findAddress");
        Long id = null;
        AddressJpaController instance = null;
        Address expResult = null;
        Address result = instance.findAddress(id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getAddressCount method, of class AddressJpaController.
     */
    @Test
    public void testGetAddressCount() {
        System.out.println("getAddressCount");
        AddressJpaController instance = null;
        int expResult = 0;
        int result = instance.getAddressCount();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
