

import Foundation


public extension PlatformClient.Partner {
    /*
        Model: Callback
        Used By: Partner
    */

    class Callback: Codable {
        
        
        public var auth: String?
        
        public var autoInstall: String?
        
        public var install: String?
        
        public var setup: String?
        
        public var uninstall: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case auth = "auth"
            
            case autoInstall = "auto_install"
            
            case install = "install"
            
            case setup = "setup"
            
            case uninstall = "uninstall"
            
        }

        public init(auth: String? = nil, autoInstall: String? = nil, install: String? = nil, setup: String? = nil, uninstall: String? = nil) {
            
            self.auth = auth
            
            self.autoInstall = autoInstall
            
            self.install = install
            
            self.setup = setup
            
            self.uninstall = uninstall
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    auth = try container.decode(String.self, forKey: .auth)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    autoInstall = try container.decode(String.self, forKey: .autoInstall)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    install = try container.decode(String.self, forKey: .install)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    setup = try container.decode(String.self, forKey: .setup)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uninstall = try container.decode(String.self, forKey: .uninstall)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(auth, forKey: .auth)
            
            
            
            
            try? container.encodeIfPresent(autoInstall, forKey: .autoInstall)
            
            
            
            
            try? container.encodeIfPresent(install, forKey: .install)
            
            
            
            
            try? container.encodeIfPresent(setup, forKey: .setup)
            
            
            
            
            try? container.encodeIfPresent(uninstall, forKey: .uninstall)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Partner {
    /*
        Model: Callback
        Used By: Partner
    */

    class Callback: Codable {
        
        
        public var auth: String?
        
        public var autoInstall: String?
        
        public var install: String?
        
        public var setup: String?
        
        public var uninstall: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case auth = "auth"
            
            case autoInstall = "auto_install"
            
            case install = "install"
            
            case setup = "setup"
            
            case uninstall = "uninstall"
            
        }

        public init(auth: String? = nil, autoInstall: String? = nil, install: String? = nil, setup: String? = nil, uninstall: String? = nil) {
            
            self.auth = auth
            
            self.autoInstall = autoInstall
            
            self.install = install
            
            self.setup = setup
            
            self.uninstall = uninstall
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    auth = try container.decode(String.self, forKey: .auth)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    autoInstall = try container.decode(String.self, forKey: .autoInstall)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    install = try container.decode(String.self, forKey: .install)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    setup = try container.decode(String.self, forKey: .setup)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uninstall = try container.decode(String.self, forKey: .uninstall)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(auth, forKey: .auth)
            
            
            
            
            try? container.encodeIfPresent(autoInstall, forKey: .autoInstall)
            
            
            
            
            try? container.encodeIfPresent(install, forKey: .install)
            
            
            
            
            try? container.encodeIfPresent(setup, forKey: .setup)
            
            
            
            
            try? container.encodeIfPresent(uninstall, forKey: .uninstall)
            
            
        }
        
    }
}


