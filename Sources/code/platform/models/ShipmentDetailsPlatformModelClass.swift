

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentDetails
         Used By: OrderInvoiceEngine
     */

    class ShipmentDetails: Codable {
        public var shipmentNo: String

        public var appointmentNo: String

        public var totalSku: String

        public var itemQty: String

        public var noOfBoxes: String

        public var shippingTo: String

        public var gstinNumber: String

        public var shippingAddress: ShippingAddress

        public var sellerAddress: SellerAddress

        public enum CodingKeys: String, CodingKey {
            case shipmentNo = "shipment_no"

            case appointmentNo = "appointment_no"

            case totalSku = "total_sku"

            case itemQty = "item_qty"

            case noOfBoxes = "no_of_boxes"

            case shippingTo = "shipping_to"

            case gstinNumber = "gstin_number"

            case shippingAddress = "shipping_address"

            case sellerAddress = "seller_address"
        }

        public init(appointmentNo: String, gstinNumber: String, itemQty: String, noOfBoxes: String, sellerAddress: SellerAddress, shipmentNo: String, shippingAddress: ShippingAddress, shippingTo: String, totalSku: String) {
            self.shipmentNo = shipmentNo

            self.appointmentNo = appointmentNo

            self.totalSku = totalSku

            self.itemQty = itemQty

            self.noOfBoxes = noOfBoxes

            self.shippingTo = shippingTo

            self.gstinNumber = gstinNumber

            self.shippingAddress = shippingAddress

            self.sellerAddress = sellerAddress
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentNo = try container.decode(String.self, forKey: .shipmentNo)

            appointmentNo = try container.decode(String.self, forKey: .appointmentNo)

            totalSku = try container.decode(String.self, forKey: .totalSku)

            itemQty = try container.decode(String.self, forKey: .itemQty)

            noOfBoxes = try container.decode(String.self, forKey: .noOfBoxes)

            shippingTo = try container.decode(String.self, forKey: .shippingTo)

            gstinNumber = try container.decode(String.self, forKey: .gstinNumber)

            shippingAddress = try container.decode(ShippingAddress.self, forKey: .shippingAddress)

            sellerAddress = try container.decode(SellerAddress.self, forKey: .sellerAddress)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentNo, forKey: .shipmentNo)

            try? container.encodeIfPresent(appointmentNo, forKey: .appointmentNo)

            try? container.encodeIfPresent(totalSku, forKey: .totalSku)

            try? container.encodeIfPresent(itemQty, forKey: .itemQty)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(shippingTo, forKey: .shippingTo)

            try? container.encodeIfPresent(gstinNumber, forKey: .gstinNumber)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(sellerAddress, forKey: .sellerAddress)
        }
    }
}
