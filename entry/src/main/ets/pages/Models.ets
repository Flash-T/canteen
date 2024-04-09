// 食堂种类对象
export class CanteenData{

  name: string;

  constructor(name: string) {
    this.name = name
  }
}

// 楚园食堂商家对象
export class Business{

  id: string;
  name: string;

  constructor(id: string, name: string) {
    this.id = id
    this.name = name
  }
}