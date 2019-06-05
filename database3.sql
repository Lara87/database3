SELECT first.ФИО, second.ФИО, first.Город, second.Город FROM Агент first, Агент second WHERE first.Город = second.Город AND first.ФИО < second.ФИО ORDER BY first.Город ASC

SELECT * FROM Заказ WHERE ID_Заказчик = (SELECT ID_Заказчик FROM Заказчик WHERE Название = 'Три кота')

SELECT Id_Заказчик, Название FROM Заказчик WHERE
Рейтинг = (SELECT MAX (рейтинг) FROM Агент, Заказчик WHERE Агент.Город = Заказчик.Город )

SELECT ФИО FROM Агент WHERE EXISTS (SELECT * FROM Заказчик WHERE Агент.ID_Агент = Заказчик.ID_Агент AND Рейтинг = 60)

SELECT Название FROM Заказчик WHERE Рейтинг > = ANY (SELECT Рейтинг FROM Заказчик WHERE Название = 'Мясокомбинат');

SELECT Название, Город, Рейтинг, 'Высокий рейтинг' FROM Заказчик WHERE Рейтинг > = 60 
UNION 
SELECT Название, Город, Рейтинг, ' Низкий рейтинг' FROM Заказчик WHERE Рейтинг < 60; 
