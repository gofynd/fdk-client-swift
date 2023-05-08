

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var avlQty: Int

        public var quantity: Int

        public var deliveryCharge: Double

        public var pdfLinks: MarketPlacePdf?

        public var identifier: [String: Any]

        public var priceMarked: Double

        public var transferPrice: Int

        public var priceEffective: Double

        public var affiliateStoreId: String

        public var companyId: Int

        public var storeId: Int

        public var fyndStoreId: String

        public var id: String

        public var discount: Double

        public var hsnCodeId: String

        public var itemSize: String

        public var unitPrice: Double

        public var modifiedOn: String

        public var affiliateMeta: [String: Any]

        public var sku: String

        public var itemId: Int

        public var sellerIdentifier: String

        public var amountPaid: Double

        public enum CodingKeys: String, CodingKey {
            case avlQty = "avl_qty"

            case quantity

            case deliveryCharge = "delivery_charge"

            case pdfLinks = "pdf_links"

            case identifier

            case priceMarked = "price_marked"

            case transferPrice = "transfer_price"

            case priceEffective = "price_effective"

            case affiliateStoreId = "affiliate_store_id"

            case companyId = "company_id"

            case storeId = "store_id"

            case fyndStoreId = "fynd_store_id"

            case id = "_id"

            case discount

            case hsnCodeId = "hsn_code_id"

            case itemSize = "item_size"

            case unitPrice = "unit_price"

            case modifiedOn = "modified_on"

            case affiliateMeta = "affiliate_meta"

            case sku

            case itemId = "item_id"

            case sellerIdentifier = "seller_identifier"

            case amountPaid = "amount_paid"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.avlQty = avlQty

            self.quantity = quantity

            self.deliveryCharge = deliveryCharge

            self.pdfLinks = pdfLinks

            self.identifier = identifier

            self.priceMarked = priceMarked

            self.transferPrice = transferPrice

            self.priceEffective = priceEffective

            self.affiliateStoreId = affiliateStoreId

            self.companyId = companyId

            self.storeId = storeId

            self.fyndStoreId = fyndStoreId

            self.id = id

            self.discount = discount

            self.hsnCodeId = hsnCodeId

            self.itemSize = itemSize

            self.unitPrice = unitPrice

            self.modifiedOn = modifiedOn

            self.affiliateMeta = affiliateMeta

            self.sku = sku

            self.itemId = itemId

            self.sellerIdentifier = sellerIdentifier

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            quantity = try container.decode(Int.self, forKey: .quantity)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            id = try container.decode(String.self, forKey: .id)

            discount = try container.decode(Double.self, forKey: .discount)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sku = try container.decode(String.self, forKey: .sku)

            itemId = try container.decode(Int.self, forKey: .itemId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var avlQty: Int

        public var quantity: Int

        public var deliveryCharge: Double

        public var pdfLinks: MarketPlacePdf?

        public var identifier: [String: Any]

        public var priceMarked: Double

        public var transferPrice: Int

        public var priceEffective: Double

        public var affiliateStoreId: String

        public var companyId: Int

        public var storeId: Int

        public var fyndStoreId: String

        public var id: String

        public var discount: Double

        public var hsnCodeId: String

        public var itemSize: String

        public var unitPrice: Double

        public var modifiedOn: String

        public var affiliateMeta: [String: Any]

        public var sku: String

        public var itemId: Int

        public var sellerIdentifier: String

        public var amountPaid: Double

        public enum CodingKeys: String, CodingKey {
            case avlQty = "avl_qty"

            case quantity

            case deliveryCharge = "delivery_charge"

            case pdfLinks = "pdf_links"

            case identifier

            case priceMarked = "price_marked"

            case transferPrice = "transfer_price"

            case priceEffective = "price_effective"

            case affiliateStoreId = "affiliate_store_id"

            case companyId = "company_id"

            case storeId = "store_id"

            case fyndStoreId = "fynd_store_id"

            case id = "_id"

            case discount

            case hsnCodeId = "hsn_code_id"

            case itemSize = "item_size"

            case unitPrice = "unit_price"

            case modifiedOn = "modified_on"

            case affiliateMeta = "affiliate_meta"

            case sku

            case itemId = "item_id"

            case sellerIdentifier = "seller_identifier"

            case amountPaid = "amount_paid"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.avlQty = avlQty

            self.quantity = quantity

            self.deliveryCharge = deliveryCharge

            self.pdfLinks = pdfLinks

            self.identifier = identifier

            self.priceMarked = priceMarked

            self.transferPrice = transferPrice

            self.priceEffective = priceEffective

            self.affiliateStoreId = affiliateStoreId

            self.companyId = companyId

            self.storeId = storeId

            self.fyndStoreId = fyndStoreId

            self.id = id

            self.discount = discount

            self.hsnCodeId = hsnCodeId

            self.itemSize = itemSize

            self.unitPrice = unitPrice

            self.modifiedOn = modifiedOn

            self.affiliateMeta = affiliateMeta

            self.sku = sku

            self.itemId = itemId

            self.sellerIdentifier = sellerIdentifier

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            quantity = try container.decode(Int.self, forKey: .quantity)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            id = try container.decode(String.self, forKey: .id)

            discount = try container.decode(Double.self, forKey: .discount)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sku = try container.decode(String.self, forKey: .sku)

            itemId = try container.decode(Int.self, forKey: .itemId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
        }
    }
}
