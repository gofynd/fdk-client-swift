

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var itemId: Int

        public var priceEffective: Double

        public var companyId: Int

        public var affiliateMeta: [String: Any]

        public var modifiedOn: String

        public var amountPaid: Double

        public var priceMarked: Double

        public var sellerIdentifier: String

        public var unitPrice: Double

        public var itemSize: String

        public var affiliateStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var quantity: Int

        public var fyndStoreId: String

        public var id: String

        public var deliveryCharge: Double

        public var hsnCodeId: String

        public var identifier: [String: Any]

        public var discount: Double

        public var sku: String

        public var transferPrice: Int

        public var storeId: Int

        public var avlQty: Int

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case priceEffective = "price_effective"

            case companyId = "company_id"

            case affiliateMeta = "affiliate_meta"

            case modifiedOn = "modified_on"

            case amountPaid = "amount_paid"

            case priceMarked = "price_marked"

            case sellerIdentifier = "seller_identifier"

            case unitPrice = "unit_price"

            case itemSize = "item_size"

            case affiliateStoreId = "affiliate_store_id"

            case pdfLinks = "pdf_links"

            case quantity

            case fyndStoreId = "fynd_store_id"

            case id = "_id"

            case deliveryCharge = "delivery_charge"

            case hsnCodeId = "hsn_code_id"

            case identifier

            case discount

            case sku

            case transferPrice = "transfer_price"

            case storeId = "store_id"

            case avlQty = "avl_qty"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.itemId = itemId

            self.priceEffective = priceEffective

            self.companyId = companyId

            self.affiliateMeta = affiliateMeta

            self.modifiedOn = modifiedOn

            self.amountPaid = amountPaid

            self.priceMarked = priceMarked

            self.sellerIdentifier = sellerIdentifier

            self.unitPrice = unitPrice

            self.itemSize = itemSize

            self.affiliateStoreId = affiliateStoreId

            self.pdfLinks = pdfLinks

            self.quantity = quantity

            self.fyndStoreId = fyndStoreId

            self.id = id

            self.deliveryCharge = deliveryCharge

            self.hsnCodeId = hsnCodeId

            self.identifier = identifier

            self.discount = discount

            self.sku = sku

            self.transferPrice = transferPrice

            self.storeId = storeId

            self.avlQty = avlQty
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            id = try container.decode(String.self, forKey: .id)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            discount = try container.decode(Double.self, forKey: .discount)

            sku = try container.decode(String.self, forKey: .sku)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)
        }
    }
}
