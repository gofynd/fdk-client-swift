

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var avlQty: Int

        public var id: String

        public var companyId: Int

        public var storeId: Int

        public var hsnCodeId: String

        public var transferPrice: Int

        public var itemId: Int

        public var quantity: Int

        public var deliveryCharge: Double

        public var priceEffective: Double

        public var sku: String

        public var discount: Double

        public var unitPrice: Double

        public var fyndStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var amountPaid: Double

        public var priceMarked: Double

        public var sellerIdentifier: String

        public var identifier: [String: Any]

        public var affiliateStoreId: String

        public var itemSize: String

        public var modifiedOn: String

        public var affiliateMeta: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case avlQty = "avl_qty"

            case id = "_id"

            case companyId = "company_id"

            case storeId = "store_id"

            case hsnCodeId = "hsn_code_id"

            case transferPrice = "transfer_price"

            case itemId = "item_id"

            case quantity

            case deliveryCharge = "delivery_charge"

            case priceEffective = "price_effective"

            case sku

            case discount

            case unitPrice = "unit_price"

            case fyndStoreId = "fynd_store_id"

            case pdfLinks = "pdf_links"

            case amountPaid = "amount_paid"

            case priceMarked = "price_marked"

            case sellerIdentifier = "seller_identifier"

            case identifier

            case affiliateStoreId = "affiliate_store_id"

            case itemSize = "item_size"

            case modifiedOn = "modified_on"

            case affiliateMeta = "affiliate_meta"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.avlQty = avlQty

            self.id = id

            self.companyId = companyId

            self.storeId = storeId

            self.hsnCodeId = hsnCodeId

            self.transferPrice = transferPrice

            self.itemId = itemId

            self.quantity = quantity

            self.deliveryCharge = deliveryCharge

            self.priceEffective = priceEffective

            self.sku = sku

            self.discount = discount

            self.unitPrice = unitPrice

            self.fyndStoreId = fyndStoreId

            self.pdfLinks = pdfLinks

            self.amountPaid = amountPaid

            self.priceMarked = priceMarked

            self.sellerIdentifier = sellerIdentifier

            self.identifier = identifier

            self.affiliateStoreId = affiliateStoreId

            self.itemSize = itemSize

            self.modifiedOn = modifiedOn

            self.affiliateMeta = affiliateMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            id = try container.decode(String.self, forKey: .id)

            companyId = try container.decode(Int.self, forKey: .companyId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemId = try container.decode(Int.self, forKey: .itemId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sku = try container.decode(String.self, forKey: .sku)

            discount = try container.decode(Double.self, forKey: .discount)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)
        }
    }
}
