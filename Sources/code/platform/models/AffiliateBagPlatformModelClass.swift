

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var transferPrice: Int

        public var discount: Double

        public var sellerIdentifier: String

        public var pdfLinks: MarketPlacePdf?

        public var affiliateStoreId: String

        public var fyndStoreId: String

        public var companyId: Int

        public var sku: String

        public var affiliateMeta: [String: Any]

        public var avlQty: Int

        public var itemId: Int

        public var itemSize: String

        public var quantity: Int

        public var amountPaid: Double

        public var priceEffective: Double

        public var id: String

        public var identifier: [String: Any]

        public var unitPrice: Double

        public var hsnCodeId: String

        public var storeId: Int

        public var deliveryCharge: Double

        public var priceMarked: Double

        public var modifiedOn: String

        public enum CodingKeys: String, CodingKey {
            case transferPrice = "transfer_price"

            case discount

            case sellerIdentifier = "seller_identifier"

            case pdfLinks = "pdf_links"

            case affiliateStoreId = "affiliate_store_id"

            case fyndStoreId = "fynd_store_id"

            case companyId = "company_id"

            case sku

            case affiliateMeta = "affiliate_meta"

            case avlQty = "avl_qty"

            case itemId = "item_id"

            case itemSize = "item_size"

            case quantity

            case amountPaid = "amount_paid"

            case priceEffective = "price_effective"

            case id = "_id"

            case identifier

            case unitPrice = "unit_price"

            case hsnCodeId = "hsn_code_id"

            case storeId = "store_id"

            case deliveryCharge = "delivery_charge"

            case priceMarked = "price_marked"

            case modifiedOn = "modified_on"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.transferPrice = transferPrice

            self.discount = discount

            self.sellerIdentifier = sellerIdentifier

            self.pdfLinks = pdfLinks

            self.affiliateStoreId = affiliateStoreId

            self.fyndStoreId = fyndStoreId

            self.companyId = companyId

            self.sku = sku

            self.affiliateMeta = affiliateMeta

            self.avlQty = avlQty

            self.itemId = itemId

            self.itemSize = itemSize

            self.quantity = quantity

            self.amountPaid = amountPaid

            self.priceEffective = priceEffective

            self.id = id

            self.identifier = identifier

            self.unitPrice = unitPrice

            self.hsnCodeId = hsnCodeId

            self.storeId = storeId

            self.deliveryCharge = deliveryCharge

            self.priceMarked = priceMarked

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            discount = try container.decode(Double.self, forKey: .discount)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            sku = try container.decode(String.self, forKey: .sku)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            itemId = try container.decode(Int.self, forKey: .itemId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            quantity = try container.decode(Int.self, forKey: .quantity)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            id = try container.decode(String.self, forKey: .id)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}
