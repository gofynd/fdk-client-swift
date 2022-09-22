

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentDetails1
         Used By: Order
     */

    class ShipmentDetails1: Codable {
        public var deliveryAddressJson: DeliveryAddress

        public var ewayBillId: String?

        public var packagingType: String

        public var meta: ShipmentMeta

        public var creditNoteId: String?

        public var affiliateShipmentId: String

        public var fyndOrderId: String

        public var billingAddressJson: BillingAddress1

        public var sId: String

        public var parentType: String?

        public var pdfLinks: PDFLinks

        public var lockStatus: String

        public var sdType: String

        public var affiliateId: String

        public var fulfilmentPriority: Int

        public var storeInvoiceId: String?

        public var previousShipmentId: String?

        public var parentId: String?

        public var tags: [String]?

        public var deliveryAwbNumber: String?

        public var handOverContactJson: ShipmentHandOverCustomerContact

        public var createdAt: Int

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case deliveryAddressJson = "delivery_address_json"

            case ewayBillId = "eway_bill_id"

            case packagingType = "packaging_type"

            case meta

            case creditNoteId = "credit_note_id"

            case affiliateShipmentId = "affiliate_shipment_id"

            case fyndOrderId = "fynd_order_id"

            case billingAddressJson = "billing_address_json"

            case sId = "s_id"

            case parentType = "parent_type"

            case pdfLinks = "pdf_links"

            case lockStatus = "lock_status"

            case sdType = "sd_type"

            case affiliateId = "affiliate_id"

            case fulfilmentPriority = "fulfilment_priority"

            case storeInvoiceId = "store_invoice_id"

            case previousShipmentId = "previous_shipment_id"

            case parentId = "parent_id"

            case tags

            case deliveryAwbNumber = "delivery_awb_number"

            case handOverContactJson = "hand_over_contact_json"

            case createdAt = "created_at"

            case isActive = "is_active"
        }

        public init(affiliateId: String, affiliateShipmentId: String, billingAddressJson: BillingAddress1, createdAt: Int, creditNoteId: String? = nil, deliveryAddressJson: DeliveryAddress, deliveryAwbNumber: String? = nil, ewayBillId: String? = nil, fulfilmentPriority: Int, fyndOrderId: String, handOverContactJson: ShipmentHandOverCustomerContact, isActive: Bool, lockStatus: String, meta: ShipmentMeta, packagingType: String, parentId: String? = nil, parentType: String? = nil, pdfLinks: PDFLinks, previousShipmentId: String? = nil, sdType: String, storeInvoiceId: String? = nil, sId: String, tags: [String]? = nil) {
            self.deliveryAddressJson = deliveryAddressJson

            self.ewayBillId = ewayBillId

            self.packagingType = packagingType

            self.meta = meta

            self.creditNoteId = creditNoteId

            self.affiliateShipmentId = affiliateShipmentId

            self.fyndOrderId = fyndOrderId

            self.billingAddressJson = billingAddressJson

            self.sId = sId

            self.parentType = parentType

            self.pdfLinks = pdfLinks

            self.lockStatus = lockStatus

            self.sdType = sdType

            self.affiliateId = affiliateId

            self.fulfilmentPriority = fulfilmentPriority

            self.storeInvoiceId = storeInvoiceId

            self.previousShipmentId = previousShipmentId

            self.parentId = parentId

            self.tags = tags

            self.deliveryAwbNumber = deliveryAwbNumber

            self.handOverContactJson = handOverContactJson

            self.createdAt = createdAt

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            deliveryAddressJson = try container.decode(DeliveryAddress.self, forKey: .deliveryAddressJson)

            do {
                ewayBillId = try container.decode(String.self, forKey: .ewayBillId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            packagingType = try container.decode(String.self, forKey: .packagingType)

            meta = try container.decode(ShipmentMeta.self, forKey: .meta)

            do {
                creditNoteId = try container.decode(String.self, forKey: .creditNoteId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            billingAddressJson = try container.decode(BillingAddress1.self, forKey: .billingAddressJson)

            sId = try container.decode(String.self, forKey: .sId)

            do {
                parentType = try container.decode(String.self, forKey: .parentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pdfLinks = try container.decode(PDFLinks.self, forKey: .pdfLinks)

            lockStatus = try container.decode(String.self, forKey: .lockStatus)

            sdType = try container.decode(String.self, forKey: .sdType)

            affiliateId = try container.decode(String.self, forKey: .affiliateId)

            fulfilmentPriority = try container.decode(Int.self, forKey: .fulfilmentPriority)

            do {
                storeInvoiceId = try container.decode(String.self, forKey: .storeInvoiceId)

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

            do {
                parentId = try container.decode(String.self, forKey: .parentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryAwbNumber = try container.decode(String.self, forKey: .deliveryAwbNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            handOverContactJson = try container.decode(ShipmentHandOverCustomerContact.self, forKey: .handOverContactJson)

            createdAt = try container.decode(Int.self, forKey: .createdAt)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(deliveryAddressJson, forKey: .deliveryAddressJson)

            try? container.encode(ewayBillId, forKey: .ewayBillId)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(creditNoteId, forKey: .creditNoteId)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(billingAddressJson, forKey: .billingAddressJson)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encode(parentType, forKey: .parentType)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encode(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(sdType, forKey: .sdType)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(fulfilmentPriority, forKey: .fulfilmentPriority)

            try? container.encode(storeInvoiceId, forKey: .storeInvoiceId)

            try? container.encode(previousShipmentId, forKey: .previousShipmentId)

            try? container.encode(parentId, forKey: .parentId)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encode(deliveryAwbNumber, forKey: .deliveryAwbNumber)

            try? container.encodeIfPresent(handOverContactJson, forKey: .handOverContactJson)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encode(isActive, forKey: .isActive)
        }
    }
}
