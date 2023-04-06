

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var storeId: Int

        public var fyndStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var sellerIdentifier: String

        public var affiliateMeta: [String: Any]

        public var unitPrice: Double

        public var deliveryCharge: Double

        public var identifier: [String: Any]

        public var priceMarked: Double

        public var hsnCodeId: String

        public var quantity: Int

        public var amountPaid: Double

        public var sku: String

        public var itemSize: String

        public var companyId: Int

        public var discount: Double

        public var priceEffective: Double

        public var id: String

        public var itemId: Int

        public var transferPrice: Int

        public var avlQty: Int

        public var modifiedOn: String

        public var affiliateStoreId: String

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case fyndStoreId = "fynd_store_id"

            case pdfLinks = "pdf_links"

            case sellerIdentifier = "seller_identifier"

            case affiliateMeta = "affiliate_meta"

            case unitPrice = "unit_price"

            case deliveryCharge = "delivery_charge"

            case identifier

            case priceMarked = "price_marked"

            case hsnCodeId = "hsn_code_id"

            case quantity

            case amountPaid = "amount_paid"

            case sku

            case itemSize = "item_size"

            case companyId = "company_id"

            case discount

            case priceEffective = "price_effective"

            case id = "_id"

            case itemId = "item_id"

            case transferPrice = "transfer_price"

            case avlQty = "avl_qty"

            case modifiedOn = "modified_on"

            case affiliateStoreId = "affiliate_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.storeId = storeId

            self.fyndStoreId = fyndStoreId

            self.pdfLinks = pdfLinks

            self.sellerIdentifier = sellerIdentifier

            self.affiliateMeta = affiliateMeta

            self.unitPrice = unitPrice

            self.deliveryCharge = deliveryCharge

            self.identifier = identifier

            self.priceMarked = priceMarked

            self.hsnCodeId = hsnCodeId

            self.quantity = quantity

            self.amountPaid = amountPaid

            self.sku = sku

            self.itemSize = itemSize

            self.companyId = companyId

            self.discount = discount

            self.priceEffective = priceEffective

            self.id = id

            self.itemId = itemId

            self.transferPrice = transferPrice

            self.avlQty = avlQty

            self.modifiedOn = modifiedOn

            self.affiliateStoreId = affiliateStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeId = try container.decode(Int.self, forKey: .storeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            sku = try container.decode(String.self, forKey: .sku)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            companyId = try container.decode(Int.self, forKey: .companyId)

            discount = try container.decode(Double.self, forKey: .discount)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            id = try container.decode(String.self, forKey: .id)

            itemId = try container.decode(Int.self, forKey: .itemId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)
        }
    }
}
