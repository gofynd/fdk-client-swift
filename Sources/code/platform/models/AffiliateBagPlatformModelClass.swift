

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var storeId: Int

        public var transferPrice: Int

        public var sellerIdentifier: String

        public var pdfLinks: MarketPlacePdf?

        public var quantity: Int

        public var discount: Double

        public var identifier: [String: Any]

        public var itemSize: String

        public var deliveryCharge: Double

        public var unitPrice: Double

        public var affiliateStoreId: String

        public var priceMarked: Double

        public var itemId: Int

        public var sku: String

        public var avlQty: Int

        public var id: String

        public var companyId: Int

        public var amountPaid: Double

        public var hsnCodeId: String

        public var fyndStoreId: String

        public var modifiedOn: String

        public var priceEffective: Double

        public var affiliateMeta: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case transferPrice = "transfer_price"

            case sellerIdentifier = "seller_identifier"

            case pdfLinks = "pdf_links"

            case quantity

            case discount

            case identifier

            case itemSize = "item_size"

            case deliveryCharge = "delivery_charge"

            case unitPrice = "unit_price"

            case affiliateStoreId = "affiliate_store_id"

            case priceMarked = "price_marked"

            case itemId = "item_id"

            case sku

            case avlQty = "avl_qty"

            case id = "_id"

            case companyId = "company_id"

            case amountPaid = "amount_paid"

            case hsnCodeId = "hsn_code_id"

            case fyndStoreId = "fynd_store_id"

            case modifiedOn = "modified_on"

            case priceEffective = "price_effective"

            case affiliateMeta = "affiliate_meta"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.storeId = storeId

            self.transferPrice = transferPrice

            self.sellerIdentifier = sellerIdentifier

            self.pdfLinks = pdfLinks

            self.quantity = quantity

            self.discount = discount

            self.identifier = identifier

            self.itemSize = itemSize

            self.deliveryCharge = deliveryCharge

            self.unitPrice = unitPrice

            self.affiliateStoreId = affiliateStoreId

            self.priceMarked = priceMarked

            self.itemId = itemId

            self.sku = sku

            self.avlQty = avlQty

            self.id = id

            self.companyId = companyId

            self.amountPaid = amountPaid

            self.hsnCodeId = hsnCodeId

            self.fyndStoreId = fyndStoreId

            self.modifiedOn = modifiedOn

            self.priceEffective = priceEffective

            self.affiliateMeta = affiliateMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeId = try container.decode(Int.self, forKey: .storeId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            discount = try container.decode(Double.self, forKey: .discount)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            itemId = try container.decode(Int.self, forKey: .itemId)

            sku = try container.decode(String.self, forKey: .sku)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            id = try container.decode(String.self, forKey: .id)

            companyId = try container.decode(Int.self, forKey: .companyId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)
        }
    }
}
