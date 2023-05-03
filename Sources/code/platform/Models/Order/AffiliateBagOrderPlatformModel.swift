

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var identifier: [String: Any]

        public var affiliateStoreId: String

        public var amountPaid: Double

        public var hsnCodeId: String

        public var sku: String

        public var itemId: Int

        public var companyId: Int

        public var storeId: Int

        public var affiliateMeta: [String: Any]

        public var modifiedOn: String

        public var avlQty: Int

        public var transferPrice: Int

        public var pdfLinks: MarketPlacePdf?

        public var quantity: Int

        public var discount: Double

        public var priceMarked: Double

        public var unitPrice: Double

        public var deliveryCharge: Double

        public var id: String

        public var sellerIdentifier: String

        public var priceEffective: Double

        public var fyndStoreId: String

        public var itemSize: String

        public enum CodingKeys: String, CodingKey {
            case identifier

            case affiliateStoreId = "affiliate_store_id"

            case amountPaid = "amount_paid"

            case hsnCodeId = "hsn_code_id"

            case sku

            case itemId = "item_id"

            case companyId = "company_id"

            case storeId = "store_id"

            case affiliateMeta = "affiliate_meta"

            case modifiedOn = "modified_on"

            case avlQty = "avl_qty"

            case transferPrice = "transfer_price"

            case pdfLinks = "pdf_links"

            case quantity

            case discount

            case priceMarked = "price_marked"

            case unitPrice = "unit_price"

            case deliveryCharge = "delivery_charge"

            case id = "_id"

            case sellerIdentifier = "seller_identifier"

            case priceEffective = "price_effective"

            case fyndStoreId = "fynd_store_id"

            case itemSize = "item_size"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.identifier = identifier

            self.affiliateStoreId = affiliateStoreId

            self.amountPaid = amountPaid

            self.hsnCodeId = hsnCodeId

            self.sku = sku

            self.itemId = itemId

            self.companyId = companyId

            self.storeId = storeId

            self.affiliateMeta = affiliateMeta

            self.modifiedOn = modifiedOn

            self.avlQty = avlQty

            self.transferPrice = transferPrice

            self.pdfLinks = pdfLinks

            self.quantity = quantity

            self.discount = discount

            self.priceMarked = priceMarked

            self.unitPrice = unitPrice

            self.deliveryCharge = deliveryCharge

            self.id = id

            self.sellerIdentifier = sellerIdentifier

            self.priceEffective = priceEffective

            self.fyndStoreId = fyndStoreId

            self.itemSize = itemSize
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sku = try container.decode(String.self, forKey: .sku)

            itemId = try container.decode(Int.self, forKey: .itemId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            discount = try container.decode(Double.self, forKey: .discount)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            id = try container.decode(String.self, forKey: .id)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var identifier: [String: Any]

        public var affiliateStoreId: String

        public var amountPaid: Double

        public var hsnCodeId: String

        public var sku: String

        public var itemId: Int

        public var companyId: Int

        public var storeId: Int

        public var affiliateMeta: [String: Any]

        public var modifiedOn: String

        public var avlQty: Int

        public var transferPrice: Int

        public var pdfLinks: MarketPlacePdf?

        public var quantity: Int

        public var discount: Double

        public var priceMarked: Double

        public var unitPrice: Double

        public var deliveryCharge: Double

        public var id: String

        public var sellerIdentifier: String

        public var priceEffective: Double

        public var fyndStoreId: String

        public var itemSize: String

        public enum CodingKeys: String, CodingKey {
            case identifier

            case affiliateStoreId = "affiliate_store_id"

            case amountPaid = "amount_paid"

            case hsnCodeId = "hsn_code_id"

            case sku

            case itemId = "item_id"

            case companyId = "company_id"

            case storeId = "store_id"

            case affiliateMeta = "affiliate_meta"

            case modifiedOn = "modified_on"

            case avlQty = "avl_qty"

            case transferPrice = "transfer_price"

            case pdfLinks = "pdf_links"

            case quantity

            case discount

            case priceMarked = "price_marked"

            case unitPrice = "unit_price"

            case deliveryCharge = "delivery_charge"

            case id = "_id"

            case sellerIdentifier = "seller_identifier"

            case priceEffective = "price_effective"

            case fyndStoreId = "fynd_store_id"

            case itemSize = "item_size"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.identifier = identifier

            self.affiliateStoreId = affiliateStoreId

            self.amountPaid = amountPaid

            self.hsnCodeId = hsnCodeId

            self.sku = sku

            self.itemId = itemId

            self.companyId = companyId

            self.storeId = storeId

            self.affiliateMeta = affiliateMeta

            self.modifiedOn = modifiedOn

            self.avlQty = avlQty

            self.transferPrice = transferPrice

            self.pdfLinks = pdfLinks

            self.quantity = quantity

            self.discount = discount

            self.priceMarked = priceMarked

            self.unitPrice = unitPrice

            self.deliveryCharge = deliveryCharge

            self.id = id

            self.sellerIdentifier = sellerIdentifier

            self.priceEffective = priceEffective

            self.fyndStoreId = fyndStoreId

            self.itemSize = itemSize
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sku = try container.decode(String.self, forKey: .sku)

            itemId = try container.decode(Int.self, forKey: .itemId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            discount = try container.decode(Double.self, forKey: .discount)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            id = try container.decode(String.self, forKey: .id)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)
        }
    }
}
