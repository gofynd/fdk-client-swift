

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentDetails1
         Used By: Order
     */

    class ShipmentDetails1: Codable {
        public var deliveryAwbNumber: String?

        public var isActive: Bool

        public var creditNoteId: String?

        public var affiliateShipmentId: String

        public var tags: [String]?

        public var createdAt: Int

        public var sId: String

        public var sdType: String

        public var fyndOrderId: String

        public var handOverContactJson: ShipmentHandOverCustomerContact

        public var ewayBillId: String?

        public var pdfLinks: PDFLinks

        public var parentType: String?

        public var deliveryAddressJson: DeliveryAddress

        public var fulfilmentPriority: Int

        public var lockStatus: String

        public var storeInvoiceId: String?

        public var packagingType: String

        public var meta: ShipmentMeta

        public var previousShipmentId: String?

        public var parentId: String?

        public var affiliateId: String

        public var billingAddressJson: BillingAddress1

        public enum CodingKeys: String, CodingKey {
            case deliveryAwbNumber = "delivery_awb_number"

            case isActive = "is_active"

            case creditNoteId = "credit_note_id"

            case affiliateShipmentId = "affiliate_shipment_id"

            case tags

            case createdAt = "created_at"

            case sId = "s_id"

            case sdType = "sd_type"

            case fyndOrderId = "fynd_order_id"

            case handOverContactJson = "hand_over_contact_json"

            case ewayBillId = "eway_bill_id"

            case pdfLinks = "pdf_links"

            case parentType = "parent_type"

            case deliveryAddressJson = "delivery_address_json"

            case fulfilmentPriority = "fulfilment_priority"

            case lockStatus = "lock_status"

            case storeInvoiceId = "store_invoice_id"

            case packagingType = "packaging_type"

            case meta

            case previousShipmentId = "previous_shipment_id"

            case parentId = "parent_id"

            case affiliateId = "affiliate_id"

            case billingAddressJson = "billing_address_json"
        }

        public init(affiliateId: String, affiliateShipmentId: String, billingAddressJson: BillingAddress1, createdAt: Int, creditNoteId: String? = nil, deliveryAddressJson: DeliveryAddress, deliveryAwbNumber: String? = nil, ewayBillId: String? = nil, fulfilmentPriority: Int, fyndOrderId: String, handOverContactJson: ShipmentHandOverCustomerContact, isActive: Bool, lockStatus: String, meta: ShipmentMeta, packagingType: String, parentId: String? = nil, parentType: String? = nil, pdfLinks: PDFLinks, previousShipmentId: String? = nil, sdType: String, storeInvoiceId: String? = nil, sId: String, tags: [String]? = nil) {
            self.deliveryAwbNumber = deliveryAwbNumber

            self.isActive = isActive

            self.creditNoteId = creditNoteId

            self.affiliateShipmentId = affiliateShipmentId

            self.tags = tags

            self.createdAt = createdAt

            self.sId = sId

            self.sdType = sdType

            self.fyndOrderId = fyndOrderId

            self.handOverContactJson = handOverContactJson

            self.ewayBillId = ewayBillId

            self.pdfLinks = pdfLinks

            self.parentType = parentType

            self.deliveryAddressJson = deliveryAddressJson

            self.fulfilmentPriority = fulfilmentPriority

            self.lockStatus = lockStatus

            self.storeInvoiceId = storeInvoiceId

            self.packagingType = packagingType

            self.meta = meta

            self.previousShipmentId = previousShipmentId

            self.parentId = parentId

            self.affiliateId = affiliateId

            self.billingAddressJson = billingAddressJson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                deliveryAwbNumber = try container.decode(String.self, forKey: .deliveryAwbNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                creditNoteId = try container.decode(String.self, forKey: .creditNoteId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(Int.self, forKey: .createdAt)

            sId = try container.decode(String.self, forKey: .sId)

            sdType = try container.decode(String.self, forKey: .sdType)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            handOverContactJson = try container.decode(ShipmentHandOverCustomerContact.self, forKey: .handOverContactJson)

            do {
                ewayBillId = try container.decode(String.self, forKey: .ewayBillId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pdfLinks = try container.decode(PDFLinks.self, forKey: .pdfLinks)

            do {
                parentType = try container.decode(String.self, forKey: .parentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryAddressJson = try container.decode(DeliveryAddress.self, forKey: .deliveryAddressJson)

            fulfilmentPriority = try container.decode(Int.self, forKey: .fulfilmentPriority)

            lockStatus = try container.decode(String.self, forKey: .lockStatus)

            do {
                storeInvoiceId = try container.decode(String.self, forKey: .storeInvoiceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            packagingType = try container.decode(String.self, forKey: .packagingType)

            meta = try container.decode(ShipmentMeta.self, forKey: .meta)

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

            affiliateId = try container.decode(String.self, forKey: .affiliateId)

            billingAddressJson = try container.decode(BillingAddress1.self, forKey: .billingAddressJson)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(deliveryAwbNumber, forKey: .deliveryAwbNumber)

            try? container.encode(isActive, forKey: .isActive)

            try? container.encode(creditNoteId, forKey: .creditNoteId)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(sdType, forKey: .sdType)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(handOverContactJson, forKey: .handOverContactJson)

            try? container.encode(ewayBillId, forKey: .ewayBillId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encode(parentType, forKey: .parentType)

            try? container.encodeIfPresent(deliveryAddressJson, forKey: .deliveryAddressJson)

            try? container.encodeIfPresent(fulfilmentPriority, forKey: .fulfilmentPriority)

            try? container.encode(lockStatus, forKey: .lockStatus)

            try? container.encode(storeInvoiceId, forKey: .storeInvoiceId)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(previousShipmentId, forKey: .previousShipmentId)

            try? container.encode(parentId, forKey: .parentId)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(billingAddressJson, forKey: .billingAddressJson)
        }
    }
}
