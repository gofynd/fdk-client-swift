

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentDetails1
         Used By: Order
     */

    class ShipmentDetails1: Codable {
        public var createdAt: Int

        public var handOverContactJson: ShipmentHandOverCustomerContact

        public var parentId: String?

        public var affiliateId: String

        public var lockStatus: String

        public var packagingType: String

        public var ewayBillId: String?

        public var affiliateShipmentId: String

        public var isActive: Bool

        public var sId: String

        public var tags: [String]?

        public var pdfLinks: PDFLinks

        public var fulfilmentPriority: Int

        public var deliveryAddressJson: DeliveryAddress

        public var parentType: String?

        public var previousShipmentId: String?

        public var sdType: String

        public var meta: ShipmentMeta

        public var storeInvoiceId: String?

        public var creditNoteId: String?

        public var fyndOrderId: String

        public var billingAddressJson: BillingAddress1

        public var deliveryAwbNumber: String?

        public enum CodingKeys: String, CodingKey {
            case createdAt = "created_at"

            case handOverContactJson = "hand_over_contact_json"

            case parentId = "parent_id"

            case affiliateId = "affiliate_id"

            case lockStatus = "lock_status"

            case packagingType = "packaging_type"

            case ewayBillId = "eway_bill_id"

            case affiliateShipmentId = "affiliate_shipment_id"

            case isActive = "is_active"

            case sId = "s_id"

            case tags

            case pdfLinks = "pdf_links"

            case fulfilmentPriority = "fulfilment_priority"

            case deliveryAddressJson = "delivery_address_json"

            case parentType = "parent_type"

            case previousShipmentId = "previous_shipment_id"

            case sdType = "sd_type"

            case meta

            case storeInvoiceId = "store_invoice_id"

            case creditNoteId = "credit_note_id"

            case fyndOrderId = "fynd_order_id"

            case billingAddressJson = "billing_address_json"

            case deliveryAwbNumber = "delivery_awb_number"
        }

        public init(affiliateId: String, affiliateShipmentId: String, billingAddressJson: BillingAddress1, createdAt: Int, creditNoteId: String? = nil, deliveryAddressJson: DeliveryAddress, deliveryAwbNumber: String? = nil, ewayBillId: String? = nil, fulfilmentPriority: Int, fyndOrderId: String, handOverContactJson: ShipmentHandOverCustomerContact, isActive: Bool, lockStatus: String, meta: ShipmentMeta, packagingType: String, parentId: String? = nil, parentType: String? = nil, pdfLinks: PDFLinks, previousShipmentId: String? = nil, sdType: String, storeInvoiceId: String? = nil, sId: String, tags: [String]? = nil) {
            self.createdAt = createdAt

            self.handOverContactJson = handOverContactJson

            self.parentId = parentId

            self.affiliateId = affiliateId

            self.lockStatus = lockStatus

            self.packagingType = packagingType

            self.ewayBillId = ewayBillId

            self.affiliateShipmentId = affiliateShipmentId

            self.isActive = isActive

            self.sId = sId

            self.tags = tags

            self.pdfLinks = pdfLinks

            self.fulfilmentPriority = fulfilmentPriority

            self.deliveryAddressJson = deliveryAddressJson

            self.parentType = parentType

            self.previousShipmentId = previousShipmentId

            self.sdType = sdType

            self.meta = meta

            self.storeInvoiceId = storeInvoiceId

            self.creditNoteId = creditNoteId

            self.fyndOrderId = fyndOrderId

            self.billingAddressJson = billingAddressJson

            self.deliveryAwbNumber = deliveryAwbNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            createdAt = try container.decode(Int.self, forKey: .createdAt)

            handOverContactJson = try container.decode(ShipmentHandOverCustomerContact.self, forKey: .handOverContactJson)

            do {
                parentId = try container.decode(String.self, forKey: .parentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateId = try container.decode(String.self, forKey: .affiliateId)

            lockStatus = try container.decode(String.self, forKey: .lockStatus)

            packagingType = try container.decode(String.self, forKey: .packagingType)

            do {
                ewayBillId = try container.decode(String.self, forKey: .ewayBillId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            sId = try container.decode(String.self, forKey: .sId)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pdfLinks = try container.decode(PDFLinks.self, forKey: .pdfLinks)

            fulfilmentPriority = try container.decode(Int.self, forKey: .fulfilmentPriority)

            deliveryAddressJson = try container.decode(DeliveryAddress.self, forKey: .deliveryAddressJson)

            do {
                parentType = try container.decode(String.self, forKey: .parentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                previousShipmentId = try container.decode(String.self, forKey: .previousShipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sdType = try container.decode(String.self, forKey: .sdType)

            meta = try container.decode(ShipmentMeta.self, forKey: .meta)

            do {
                storeInvoiceId = try container.decode(String.self, forKey: .storeInvoiceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                creditNoteId = try container.decode(String.self, forKey: .creditNoteId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            billingAddressJson = try container.decode(BillingAddress1.self, forKey: .billingAddressJson)

            do {
                deliveryAwbNumber = try container.decode(String.self, forKey: .deliveryAwbNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(handOverContactJson, forKey: .handOverContactJson)

            try? container.encode(parentId, forKey: .parentId)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encode(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encode(ewayBillId, forKey: .ewayBillId)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encode(isActive, forKey: .isActive)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(fulfilmentPriority, forKey: .fulfilmentPriority)

            try? container.encodeIfPresent(deliveryAddressJson, forKey: .deliveryAddressJson)

            try? container.encode(parentType, forKey: .parentType)

            try? container.encode(previousShipmentId, forKey: .previousShipmentId)

            try? container.encodeIfPresent(sdType, forKey: .sdType)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(storeInvoiceId, forKey: .storeInvoiceId)

            try? container.encode(creditNoteId, forKey: .creditNoteId)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(billingAddressJson, forKey: .billingAddressJson)

            try? container.encode(deliveryAwbNumber, forKey: .deliveryAwbNumber)
        }
    }
}
