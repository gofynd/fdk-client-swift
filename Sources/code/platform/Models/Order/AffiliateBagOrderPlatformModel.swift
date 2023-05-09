

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var id: String

        public var affiliateStoreId: String

        public var avlQty: Int

        public var fyndStoreId: String

        public var itemId: Int

        public var companyId: Int

        public var deliveryCharge: Double

        public var pdfLinks: MarketPlacePdf?

        public var storeId: Int

        public var modifiedOn: String

        public var discount: Double

        public var transferPrice: Int

        public var priceEffective: Double

        public var affiliateMeta: [String: Any]

        public var amountPaid: Double

        public var sku: String

        public var hsnCodeId: String

        public var priceMarked: Double

        public var identifier: [String: Any]

        public var unitPrice: Double

        public var itemSize: String

        public var sellerIdentifier: String

        public var quantity: Int

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case affiliateStoreId = "affiliate_store_id"

            case avlQty = "avl_qty"

            case fyndStoreId = "fynd_store_id"

            case itemId = "item_id"

            case companyId = "company_id"

            case deliveryCharge = "delivery_charge"

            case pdfLinks = "pdf_links"

            case storeId = "store_id"

            case modifiedOn = "modified_on"

            case discount

            case transferPrice = "transfer_price"

            case priceEffective = "price_effective"

            case affiliateMeta = "affiliate_meta"

            case amountPaid = "amount_paid"

            case sku

            case hsnCodeId = "hsn_code_id"

            case priceMarked = "price_marked"

            case identifier

            case unitPrice = "unit_price"

            case itemSize = "item_size"

            case sellerIdentifier = "seller_identifier"

            case quantity
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.id = id

            self.affiliateStoreId = affiliateStoreId

            self.avlQty = avlQty

            self.fyndStoreId = fyndStoreId

            self.itemId = itemId

            self.companyId = companyId

            self.deliveryCharge = deliveryCharge

            self.pdfLinks = pdfLinks

            self.storeId = storeId

            self.modifiedOn = modifiedOn

            self.discount = discount

            self.transferPrice = transferPrice

            self.priceEffective = priceEffective

            self.affiliateMeta = affiliateMeta

            self.amountPaid = amountPaid

            self.sku = sku

            self.hsnCodeId = hsnCodeId

            self.priceMarked = priceMarked

            self.identifier = identifier

            self.unitPrice = unitPrice

            self.itemSize = itemSize

            self.sellerIdentifier = sellerIdentifier

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            discount = try container.decode(Double.self, forKey: .discount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            sku = try container.decode(String.self, forKey: .sku)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            quantity = try container.decode(Int.self, forKey: .quantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var id: String

        public var affiliateStoreId: String

        public var avlQty: Int

        public var fyndStoreId: String

        public var itemId: Int

        public var companyId: Int

        public var deliveryCharge: Double

        public var pdfLinks: MarketPlacePdf?

        public var storeId: Int

        public var modifiedOn: String

        public var discount: Double

        public var transferPrice: Int

        public var priceEffective: Double

        public var affiliateMeta: [String: Any]

        public var amountPaid: Double

        public var sku: String

        public var hsnCodeId: String

        public var priceMarked: Double

        public var identifier: [String: Any]

        public var unitPrice: Double

        public var itemSize: String

        public var sellerIdentifier: String

        public var quantity: Int

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case affiliateStoreId = "affiliate_store_id"

            case avlQty = "avl_qty"

            case fyndStoreId = "fynd_store_id"

            case itemId = "item_id"

            case companyId = "company_id"

            case deliveryCharge = "delivery_charge"

            case pdfLinks = "pdf_links"

            case storeId = "store_id"

            case modifiedOn = "modified_on"

            case discount

            case transferPrice = "transfer_price"

            case priceEffective = "price_effective"

            case affiliateMeta = "affiliate_meta"

            case amountPaid = "amount_paid"

            case sku

            case hsnCodeId = "hsn_code_id"

            case priceMarked = "price_marked"

            case identifier

            case unitPrice = "unit_price"

            case itemSize = "item_size"

            case sellerIdentifier = "seller_identifier"

            case quantity
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.id = id

            self.affiliateStoreId = affiliateStoreId

            self.avlQty = avlQty

            self.fyndStoreId = fyndStoreId

            self.itemId = itemId

            self.companyId = companyId

            self.deliveryCharge = deliveryCharge

            self.pdfLinks = pdfLinks

            self.storeId = storeId

            self.modifiedOn = modifiedOn

            self.discount = discount

            self.transferPrice = transferPrice

            self.priceEffective = priceEffective

            self.affiliateMeta = affiliateMeta

            self.amountPaid = amountPaid

            self.sku = sku

            self.hsnCodeId = hsnCodeId

            self.priceMarked = priceMarked

            self.identifier = identifier

            self.unitPrice = unitPrice

            self.itemSize = itemSize

            self.sellerIdentifier = sellerIdentifier

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            discount = try container.decode(Double.self, forKey: .discount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            sku = try container.decode(String.self, forKey: .sku)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            quantity = try container.decode(Int.self, forKey: .quantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}
