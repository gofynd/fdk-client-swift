

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var amountPaid: Double

        public var priceMarked: Double

        public var identifier: [String: Any]

        public var affiliateStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var storeId: Int

        public var modifiedOn: String

        public var affiliateMeta: [String: Any]

        public var id: String

        public var priceEffective: Double

        public var fyndStoreId: String

        public var itemSize: String

        public var hsnCodeId: String

        public var sellerIdentifier: String

        public var itemId: Int

        public var companyId: Int

        public var unitPrice: Double

        public var sku: String

        public var quantity: Int

        public var avlQty: Int

        public var discount: Double

        public var deliveryCharge: Double

        public var transferPrice: Int

        public enum CodingKeys: String, CodingKey {
            case amountPaid = "amount_paid"

            case priceMarked = "price_marked"

            case identifier

            case affiliateStoreId = "affiliate_store_id"

            case pdfLinks = "pdf_links"

            case storeId = "store_id"

            case modifiedOn = "modified_on"

            case affiliateMeta = "affiliate_meta"

            case id = "_id"

            case priceEffective = "price_effective"

            case fyndStoreId = "fynd_store_id"

            case itemSize = "item_size"

            case hsnCodeId = "hsn_code_id"

            case sellerIdentifier = "seller_identifier"

            case itemId = "item_id"

            case companyId = "company_id"

            case unitPrice = "unit_price"

            case sku

            case quantity

            case avlQty = "avl_qty"

            case discount

            case deliveryCharge = "delivery_charge"

            case transferPrice = "transfer_price"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.amountPaid = amountPaid

            self.priceMarked = priceMarked

            self.identifier = identifier

            self.affiliateStoreId = affiliateStoreId

            self.pdfLinks = pdfLinks

            self.storeId = storeId

            self.modifiedOn = modifiedOn

            self.affiliateMeta = affiliateMeta

            self.id = id

            self.priceEffective = priceEffective

            self.fyndStoreId = fyndStoreId

            self.itemSize = itemSize

            self.hsnCodeId = hsnCodeId

            self.sellerIdentifier = sellerIdentifier

            self.itemId = itemId

            self.companyId = companyId

            self.unitPrice = unitPrice

            self.sku = sku

            self.quantity = quantity

            self.avlQty = avlQty

            self.discount = discount

            self.deliveryCharge = deliveryCharge

            self.transferPrice = transferPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            id = try container.decode(String.self, forKey: .id)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            sku = try container.decode(String.self, forKey: .sku)

            quantity = try container.decode(Int.self, forKey: .quantity)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            discount = try container.decode(Double.self, forKey: .discount)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)
        }
    }
}
