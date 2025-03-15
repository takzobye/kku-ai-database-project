import { Button } from "@/components/ui/button";
import Link from "next/link";

export default function Home() {
	return (
		<div className="flex flex-col items-center justify-center min-h-screen p-4">
			<h1 className="text-2xl font-bold mb-6">Travel Dashboard</h1>
			<div className="flex flex-col space-y-4">
				<Button asChild variant="outline" className="w-64">
					<Link href="/travels-by-price">ราคาสถานที่ท่องเที่ยว</Link>
				</Button>
				<Button asChild variant="outline" className="w-64">
					<Link href="/popular-travels">สถานที่ท่องเที่ยวยอดนิยม</Link>
				</Button>
				<Button asChild variant="outline" className="w-64">
					<Link href="/frequent-travelers">รายชื่อคนไปเที่ยวบ่อย</Link>
				</Button>
				<Button asChild variant="outline" className="w-64">
					<Link href="/popular-regions">ภูมิภาคที่คนนิยมไปเที่ยว</Link>
				</Button>
				<Button asChild variant="outline" className="w-64">
					<Link href="/popular-types">ประเภทที่คนนิยมไปเที่ยว</Link>
				</Button>
			</div>
		</div>
	);
}