"use client";

import { useEffect, useState } from "react";
import { Button } from "@/components/ui/button";
import {
    Table,
    TableBody,
    TableCell,
    TableHead,
    TableHeader,
    TableRow,
} from "@/components/ui/table";
import Link from "next/link";

export default function FrequentTravelers() {
    const [data, setData] = useState([]);

    useEffect(() => {
        fetch("/api/frequent-travelers")
            .then((res) => res.json())
            .then((data) => setData(data));
    }, []);

    return (
        <div className="container mx-auto p-4">
            <h1 className="text-2xl font-bold mb-4">รายชื่อคนไปเที่ยวบ่อย</h1>
            <Table>
                <TableHeader>
                    <TableRow>
                        <TableHead>ชื่อ</TableHead>
                        <TableHead>จำนวน</TableHead>
                    </TableRow>
                </TableHeader>
                <TableBody>
                    {data.map((item, index) => (
                        <TableRow key={index}>
                            <TableCell>{item.user_name}</TableCell>
                            <TableCell>{item.travel_count}</TableCell>
                        </TableRow>
                    ))}
                </TableBody>
            </Table>
            <Button asChild variant="outline" className="mt-4">
                <Link href="/">กลับหน้าหลัก</Link>
            </Button>
        </div>
    );
}