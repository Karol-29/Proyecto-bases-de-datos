CREATE SEQUENCE seq_id_autions
START WITH 1
NOCYCLE;


CREATE OR REPLACE TRIGGER TRG_BEFORE_INSERT_AUCTIONS
BEFORE INSERT ON AUCTIONS
FOR EACH ROW
BEGIN
    IF :NEW.id IS NULL THEN
    :NEW.id := seq_id_autions.NEXTVAL;
    END IF;
END;

CREATE OR REPLACE TRIGGER TGR_BEFORE_UPDATE_AUCTIONS
BEFORE UPDATE ON AUCTIONS
FOR EACH ROW
BEGIN
    IF (:NEW.startTime != :OLD.startTime OR :NEW.initialPrice != :OLD.initialPrice) THEN
        IF :NEW.startTime IS NOT NULL AND :NEW.startTime != :OLD.startTime THEN
            IF :NEW.startTime <= SYSDATE THEN
                RAISE_APPLICATION_ERROR(-20001, 'startTime solo puede actualizarse a una fecha futura.');
            END IF;
        END IF;

        IF :NEW.initialPrice IS NOT NULL AND :NEW.initialPrice != :OLD.initialPrice THEN
            IF :NEW.initialPrice < :OLD.initialPrice THEN
                RAISE_APPLICATION_ERROR(-20002, 'initialPrice solo puede aumentar.');
            END IF;
        END IF;

       IF :NEW.status     != :OLD.status OR
           :NEW.endTime    != :OLD.endTime OR
           :NEW.Payment    != :OLD.Payment OR
           :NEW.Organizer  != :OLD.Organizer OR
           :NEW.Winner     != :OLD.Winner OR
           :NEW.Address    != :OLD.Address OR
           :NEW.idDelivery != :OLD.idDelivery THEN
            RAISE_APPLICATION_ERROR(-20003, 'Solo se pueden modificar startTime e initialPrice.');
        END IF;
    END IF;
END;
