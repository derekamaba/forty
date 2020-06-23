<?php

 ?>
<div class="container">
    <h2>Contacts</h2>
    <div class="right_side">
        <a href="<?php echo base_url('home/addcontact'); ?>">Add Contact</a> | <a href="<?php echo base_url('home/logout') ?>">Logout</a>
        <!-- <div class="search">
            <input type="text" name="serch_contact" value="" placeholder="Search">
        </div> -->
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-body">
                    <table class="table" id="contacttable">
                    <thead class="thead-dark">
                    <tr>
                        <th scope="col">Name</th>
                        <th scope="col">Company</th>
                        <th scope="col">Phone</th>
                        <th scope="col">Email</th>
                        <th scope="col"></th>
                    </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($data as $key => $item): ?>
                                <tr>
                                <th scope="row"><?= $item['name']; ?></th>
                                <td><?= $item['company'];  ?></td>
                                <td><?= $item['phone'];  ?></td>
                                <td><?= $item['email'];  ?></td>
                                <td>
                                    <a href="<?= base_url('home/viewcontact/'.$item['contact_id']); ?>">Edit</a> |
                                    <a href="#" class="deletecontact" contact_id = "<?= $item['contact_id'];  ?>">Delete</a>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                    </table>
                </div>
                <div class="pageLinks">
                    <?php echo $page_links; ?>
                </div>
            </div>
        </div>
    </div>
</div>
