start transaction;

insert into appointments values (203, 2, 101, '2024-08-15', 'Chest Pain');
insert into reports values (303, 2, 'ECG', '2024-08-16', 'Normal');

commit;
-- rollback; -- Uncomment this line to rollback the above transaction
