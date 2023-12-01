import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import { Order } from '@prisma/client';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class OrderService {
    constructor(
        private prismaService: PrismaService
    ) {}

    async deleteOrderById(id: number) : Promise<Order>{
        const deletedOrder = this.prismaService.order.delete({
            where: {
                id: id,
            },
        }).catch((error) => {
            throw new HttpException('Order with such id not found', HttpStatus.NOT_FOUND)
        });

        return deletedOrder;
    }
}