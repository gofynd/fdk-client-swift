

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var transferPrice: Int

        public var affiliateStoreId: String

        public var fyndStoreId: String

        public var deliveryCharge: Double

        public var priceMarked: Double

        public var hsnCodeId: String

        public var unitPrice: Double

        public var sku: String

        public var quantity: Int

        public var identifier: [String: Any]

        public var itemId: Int

        public var priceEffective: Double

        public var itemSize: String

        public var discount: Double

        public var pdfLinks: MarketPlacePdf?

        public var amountPaid: Double

        public var modifiedOn: String

        public var companyId: Int

        public var id: String

        public var affiliateMeta: [String: Any]

        public var storeId: Int

        public var sellerIdentifier: String

        public var avlQty: Int

        public enum CodingKeys: String, CodingKey {
            case transferPrice = "transfer_price"

            case affiliateStoreId = "affiliate_store_id"

            case fyndStoreId = "fynd_store_id"

            case deliveryCharge = "delivery_charge"

            case priceMarked = "price_marked"

            case hsnCodeId = "hsn_code_id"

            case unitPrice = "unit_price"

            case sku

            case quantity

            case identifier

            case itemId = "item_id"

            case priceEffective = "price_effective"

            case itemSize = "item_size"

            case discount

            case pdfLinks = "pdf_links"

            case amountPaid = "amount_paid"

            case modifiedOn = "modified_on"

            case companyId = "company_id"

            case id = "_id"

            case affiliateMeta = "affiliate_meta"

            case storeId = "store_id"

            case sellerIdentifier = "seller_identifier"

            case avlQty = "avl_qty"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.transferPrice = transferPrice

            self.affiliateStoreId = affiliateStoreId

            self.fyndStoreId = fyndStoreId

            self.deliveryCharge = deliveryCharge

            self.priceMarked = priceMarked

            self.hsnCodeId = hsnCodeId

            self.unitPrice = unitPrice

            self.sku = sku

            self.quantity = quantity

            self.identifier = identifier

            self.itemId = itemId

            self.priceEffective = priceEffective

            self.itemSize = itemSize

            self.discount = discount

            self.pdfLinks = pdfLinks

            self.amountPaid = amountPaid

            self.modifiedOn = modifiedOn

            self.companyId = companyId

            self.id = id

            self.affiliateMeta = affiliateMeta

            self.storeId = storeId

            self.sellerIdentifier = sellerIdentifier

            self.avlQty = avlQty
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            sku = try container.decode(String.self, forKey: .sku)

            quantity = try container.decode(Int.self, forKey: .quantity)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            companyId = try container.decode(Int.self, forKey: .companyId)

            id = try container.decode(String.self, forKey: .id)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)
        }
    }
}
